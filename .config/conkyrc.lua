conky.config = {
    background = true,
    update_interval = 5,

    -- Prevent flickering
    double_buffer = true,
    no_buffers = true,
    text_buffer_size = 2048,

    -- No restriction on size
    --minimum_width = 200, minimum_height = 200,
    --maximum_width = 400,

    own_window = true,
    own_window_class = 'Conky',
    -- Keep the display directly on the background
    own_window_type = 'override',
    own_window_argb_visual = true,
    own_window_argb_value = 0,
    own_window_transparent = true,

    own_window_class = 'conky-semi',
    own_window_hints = 'undecorated,sticky,skip_taskbar,skip_pager,below',
    border_inner_margin = 0,
    border_outer_margin = 0,

    gap_x = 50,
    gap_y = 100,
    alignment = 'bottom_left',

    draw_shades = false,
    draw_outline = false,
    draw_borders = false,
    draw_graph_borders = false,

    override_utf8_locale = true,
    use_xft = true,
    -- font = 'Open Sans Light:size=20',
    font = 'DejaVu Sans Mono:size=20',
    xftalpha = 0.5,
    uppercase = false,

    -- Defining colors
    -- default_color = '#EEEEEE',
    default_color = '#d32026',
};

conky.text = [[
    ${voffset 5}${font MrRobot:regular:size=90}${time %H:%M}${font}${voffset -5}
    ${voffset 5}${font MrRobot:regular:size=30}${time %a}, ${time %B} ${time %e}${font}${voffset -5}
]];
