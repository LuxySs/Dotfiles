/**
 * A Theme is a set of options that will be applied
 * ontop of the default values. see options.js for possible options
 */
import { Theme, WP, lightColors } from './settings/theme.js';

export default [
    Theme({
        name: 'Kitty Dark',
        icon: '󰄛',
        'bar.separators': false,
        'desktop.clock.enable': false,
        'desktop.drop_shadow': true,
        'desktop.avatar': "/home/lulu/Pictures/profile_pic.png",
        'hypr.wm_gaps_multiplier': 0.9,
        'border.width': 2,
    }),
];
