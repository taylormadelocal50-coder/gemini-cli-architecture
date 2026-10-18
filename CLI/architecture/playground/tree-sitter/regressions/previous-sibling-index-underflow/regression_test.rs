#[test]
fn test_tree_cursor_previous_sibling_with_many_comments() {
    let mut parser = Parser::new();
    parser.set_language(&get_language("rust")).unwrap();
    let text = "// comment\n".repeat(300);
    let tree = parser.parse(&text, None).unwrap();
    let root = tree.root_node();
    assert!(!root.has_error());

    let mut cursor = tree.walk();
    let children: Vec<_> = root.children(&mut cursor).collect();
    assert_eq!(children.len(), 300);
    assert!(children.iter().all(|node| node.is_extra()));

    cursor.reset(root);
    assert!(cursor.goto_last_child());
    for index in (0..children.len()).rev() {
        assert_eq!(cursor.node(), children[index]);
        assert_eq!(cursor.goto_previous_sibling(), index > 0, "child {index}");
    }
}
