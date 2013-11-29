call extend(g:php_builtin_functions, {
\ 'newt_bell(': 'void | void',
\ 'newt_button_bar(': 'array &$buttons | resource',
\ 'newt_button(': 'int $left, int $top, string $text | resource',
\ 'newt_centered_window(': 'int $width, int $height [, string $title] | int',
\ 'newt_checkbox_get_value(': 'resource $checkbox | string',
\ 'newt_checkbox_set_flags(': 'resource $checkbox, int $flags, int $sense | void',
\ 'newt_checkbox_set_value(': 'resource $checkbox, string $value | void',
\ 'newt_checkbox_tree_add_item(': 'resource $checkboxtree, string $text, mixed $data, int $flags, int $index [, int $...] | void',
\ 'newt_checkbox_tree_find_item(': 'resource $checkboxtree, mixed $data | array',
\ 'newt_checkbox_tree_get_current(': 'resource $checkboxtree | mixed',
\ 'newt_checkbox_tree_get_entry_value(': 'resource $checkboxtree, mixed $data | string',
\ 'newt_checkbox_tree_get_multi_selection(': 'resource $checkboxtree, string $seqnum | array',
\ 'newt_checkbox_tree_get_selection(': 'resource $checkboxtree | array',
\ 'newt_checkbox_tree_multi(': 'int $left, int $top, int $height, string $seq [, int $flags] | resource',
\ 'newt_checkbox_tree_set_current(': 'resource $checkboxtree, mixed $data | void',
\ 'newt_checkbox_tree_set_entry_value(': 'resource $checkboxtree, mixed $data, string $value | void',
\ 'newt_checkbox_tree_set_entry(': 'resource $checkboxtree, mixed $data, string $text | void',
\ 'newt_checkbox_tree_set_width(': 'resource $checkbox_tree, int $width | void',
\ 'newt_checkbox_tree(': 'int $left, int $top, int $height [, int $flags] | resource',
\ 'newt_checkbox(': 'int $left, int $top, string $text, string $def_value [, string $seq] | resource',
\ 'newt_clear_key_buffer(': 'void | void',
\ 'newt_cls(': 'void | void',
\ 'newt_compact_button(': 'int $left, int $top, string $text | resource',
\ 'newt_component_add_callback(': 'resource $component, mixed $func_name, mixed $data | void',
\ 'newt_component_takes_focus(': 'resource $component, bool $takes_focus | void',
\ 'newt_create_grid(': 'int $cols, int $rows | resource',
\ 'newt_cursor_off(': 'void | void',
\ 'newt_cursor_on(': 'void | void',
\ 'newt_delay(': 'int $microseconds | void',
\ 'newt_draw_form(': 'resource $form | void',
\ 'newt_draw_root_text(': 'int $left, int $top, string $text | void',
\ 'newt_entry_get_value(': 'resource $entry | string',
\ 'newt_entry_set_filter(': 'resource $entry, callable $filter, mixed $data | void',
\ 'newt_entry_set_flags(': 'resource $entry, int $flags, int $sense | void',
\ 'newt_entry_set(': 'resource $entry, string $value [, bool $cursor_at_end] | void',
\ 'newt_entry(': 'int $left, int $top, int $width [, string $init_value [, int $flags]] | resource',
\ 'newt_finished(': 'void | int',
\ 'newt_form_add_component(': 'resource $form, resource $component | void',
\ 'newt_form_add_components(': 'resource $form, array $components | void',
\ 'newt_form_add_hot_key(': 'resource $form, int $key | void',
\ 'newt_form_destroy(': 'resource $form | void',
\ 'newt_form_get_current(': 'resource $form | resource',
\ 'newt_form_run(': 'resource $form, array &$exit_struct | void',
\ 'newt_form_set_background(': 'resource $from, int $background | void',
\ 'newt_form_set_height(': 'resource $form, int $height | void',
\ 'newt_form_set_size(': 'resource $form | void',
\ 'newt_form_set_timer(': 'resource $form, int $milliseconds | void',
\ 'newt_form_set_width(': 'resource $form, int $width | void',
\ 'newt_form_watch_fd(': 'resource $form, resource $stream [, int $flags] | void',
\ 'newt_form(': '[ resource $vert_bar [, string $help [, int $flags]]] | resource',
\ 'newt_get_screen_size(': 'int &$cols, int &$rows | void',
\ 'newt_grid_add_components_to_form(': 'resource $grid, resource $form, bool $recurse | void',
\ 'newt_grid_basic_window(': 'resource $text, resource $middle, resource $buttons | resource',
\ 'newt_grid_free(': 'resource $grid, bool $recurse | void',
\ 'newt_grid_get_size(': 'resouce $grid, int &$width, int &$height | void',
\ 'newt_grid_h_close_stacked(': 'int $element1_type, resource $element1 [, int $... [, resource $...]] | resource',
\ 'newt_grid_h_stacked(': 'int $element1_type, resource $element1 [, int $... [, resource $...]] | resource',
\ 'newt_grid_place(': 'resource $grid, int $left, int $top | void',
\ 'newt_grid_set_field(': 'resource $grid, int $col, int $row, int $type, resource $val, int $pad_left, int $pad_top, int $pad_right, int $pad_bottom, int $anchor [, int $flags] | void',
\ 'newt_grid_simple_window(': 'resource $text, resource $middle, resource $buttons | resource',
\ 'newt_grid_v_close_stacked(': 'int $element1_type, resource $element1 [, int $... [, resource $...]] | resource',
\ 'newt_grid_v_stacked(': 'int $element1_type, resource $element1 [, int $... [, resource $...]] | resource',
\ 'newt_grid_wrapped_window_at(': 'resource $grid, string $title, int $left, int $top | void',
\ 'newt_grid_wrapped_window(': 'resource $grid, string $title | void',
\ 'newt_init(': 'void | int',
\ 'newt_label_set_text(': 'resource $label, string $text | void',
\ 'newt_label(': 'int $left, int $top, string $text | resource',
\ 'newt_listbox_append_entry(': 'resource $listbox, string $text, mixed $data | void',
\ 'newt_listbox_clear_selection(': 'resource $listbox | void',
\ 'newt_listbox_clear(': 'resource $listobx | void',
\ 'newt_listbox_delete_entry(': 'resource $listbox, mixed $key | void',
\ 'newt_listbox_get_current(': 'resource $listbox | string',
\ 'newt_listbox_get_selection(': 'resource $listbox | array',
\ 'newt_listbox_insert_entry(': 'resource $listbox, string $text, mixed $data, mixed $key | void',
\ 'newt_listbox_item_count(': 'resource $listbox | int',
\ 'newt_listbox_select_item(': 'resource $listbox, mixed $key, int $sense | void',
\ 'newt_listbox_set_current_by_key(': 'resource $listbox, mixed $key | void',
\ 'newt_listbox_set_current(': 'resource $listbox, int $num | void',
\ 'newt_listbox_set_data(': 'resource $listbox, int $num, mixed $data | void',
\ 'newt_listbox_set_entry(': 'resource $listbox, int $num, string $text | void',
\ 'newt_listbox_set_width(': 'resource $listbox, int $width | void',
\ 'newt_listbox(': 'int $left, int $top, int $height [, int $flags] | resource',
\ 'newt_listitem_get_data(': 'resource $item | mixed',
\ 'newt_listitem_set(': 'resource $item, string $text | void',
\ 'newt_listitem(': 'int $left, int $top, string $text, bool $is_default, resouce $prev_item, mixed $data [, int $flags] | resource',
\ 'newt_open_window(': 'int $left, int $top, int $width, int $height [, string $title] | int',
\ 'newt_pop_help_line(': 'void | void',
\ 'newt_pop_window(': 'void | void',
\ 'newt_push_help_line(': '[ string $text] | void',
\ 'newt_radio_get_current(': 'resource $set_member | resource',
\ 'newt_radiobutton(': 'int $left, int $top, string $text, bool $is_default [, resource $prev_button] | resource',
\ 'newt_redraw_help_line(': 'void | void',
\ 'newt_reflow_text(': 'string $text, int $width, int $flex_down, int $flex_up, int &$actual_width, int &$actual_height | string',
\ 'newt_refresh(': 'void | void',
\ 'newt_resize_screen(': '[ bool $redraw] | void',
\ 'newt_resume(': 'void | void',
\ 'newt_run_form(': 'resource $form | resource',
\ 'newt_scale_set(': 'resource $scale, int $amount | void',
\ 'newt_scale(': 'int $left, int $top, int $width, int $full_value | resource',
\ 'newt_scrollbar_set(': 'resource $scrollbar, int $where, int $total | void',
\ 'newt_set_help_callback(': 'mixed $function | void',
\ 'newt_set_suspend_callback(': 'callable $function, mixed $data | void',
\ 'newt_suspend(': 'void | void',
\ 'newt_textbox_get_num_lines(': 'resource $textbox | int',
\ 'newt_textbox_reflowed(': 'int $left, int $top, char $*text, int $width, int $flex_down, int $flex_up [, int $flags] | resource',
\ 'newt_textbox_set_height(': 'resource $textbox, int $height | void',
\ 'newt_textbox_set_text(': 'resource $textbox, string $text | void',
\ 'newt_textbox(': 'int $left, int $top, int $width, int $height [, int $flags] | resource',
\ 'newt_vertical_scrollbar(': 'int $left, int $top, int $height [, int $normal_colorset [, int $thumb_colorset]] | resource',
\ 'newt_wait_for_key(': 'void | void',
\ 'newt_win_choice(': 'string $title, string $button1_text, string $button2_text, string $format [, mixed $args [, mixed $...]] | int',
\ 'newt_win_entries(': 'string $title, string $text, int $suggested_width, int $flex_down, int $flex_up, int $data_width, array &$items, string $button1 [, string $...] | int',
\ 'newt_win_menu(': 'string $title, string $text, int $suggestedWidth, int $flexDown, int $flexUp, int $maxListHeight, array $items, int &$listItem [, string $button1 [, string $...]] | int',
\ 'newt_win_message(': 'string $title, string $button_text, string $format [, mixed $args [, mixed $...]] | void',
\ 'newt_win_messagev(': 'string $title, string $button_text, string $format, array $args | void',
\ 'newt_win_ternary(': 'string $title, string $button1_text, string $button2_text, string $button3_text, string $format [, mixed $args [, mixed $...]] | int',
\ })
