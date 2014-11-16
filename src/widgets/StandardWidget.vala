/* Copyright 2014 Marvin Beckers <ma-be@posteo.de>
*
* This file is part of Calculus.
*
* Calculus is free software: you can redistribute it
* and/or modify it under the terms of the GNU General Public License as
* published by the Free Software Foundation, either version 3 of the
* License, or (at your option) any later version.
*
* Calculus is distributed in the hope that it will be
* useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
* Public License for more details.
*
* You should have received a copy of the GNU General Public License along
* with Calculus. If not, see http://www.gnu.org/licenses/.
*/

using Gtk;
using Granite.Widgets;

namespace Calculus.Widgets {
    public class StandardWidget : Gtk.Grid {
        public Gtk.Entry main_entry;
        private Calculus.Utils.EntryUtils eutils;
        
        public StandardWidget () {
            this.expand = true;
            this.orientation = Gtk.Orientation.VERTICAL;
            this.set_column_spacing (2);
            this.set_row_spacing (2);
            this.margin = 10;
            
            main_entry = new Gtk.Entry ();
            main_entry.set_size_request (250, 40);
            this.attach (main_entry, 0, 0, 3, 1);
            
            eutils = new Calculus.Utils.EntryUtils (main_entry);
            
            var button_back = new Gtk.Button.from_icon_name ("go-previous", Gtk.IconSize.SMALL_TOOLBAR);
            button_back.set_size_request(50, 40);
            var button_del = new Gtk.Button.from_icon_name ("dialog-close", Gtk.IconSize.SMALL_TOOLBAR);
            button_del.set_size_request(50, 40);
            
            var button_add = new Gtk.Button.with_label ("+");
            var button_sub = new Gtk.Button.with_label ("-");
            var button_mult = new Gtk.Button.with_label ("*");
            var button_div = new Gtk.Button.with_label ("/");

            var button_bracket_left = new Gtk.Button.with_label ("(");
            var button_bracket_right = new Gtk.Button.with_label (")");
            
            var button_calc = new Gtk.Button.with_label ("=");

            var button_0 = new Gtk.Button.with_label ("0");
            var button_point = new Gtk.Button.with_label (".");
            var button_percent = new Gtk.Button.with_label ("%");
            
            var button_1 = new Gtk.Button.with_label ("1");
            var button_2 = new Gtk.Button.with_label ("2");
            var button_3 = new Gtk.Button.with_label ("3");
            
            var button_4 = new Gtk.Button.with_label ("4");
            var button_5 = new Gtk.Button.with_label ("5");
            var button_6 = new Gtk.Button.with_label ("6");
            
            var button_7 = new Gtk.Button.with_label ("7");
            var button_8 = new Gtk.Button.with_label ("8");
            var button_9 = new Gtk.Button.with_label ("9");
            
            button_0.set_size_request(0, 50);
            button_1.set_size_request(0, 50);
            button_4.set_size_request(0, 50);
            button_7.set_size_request(0, 50);
            
            //attach all buttons
            this.attach (button_7, 0, 1, 1, 1);
            this.attach (button_8, 1, 1, 1, 1);
            this.attach (button_9, 2, 1, 1, 1);
            
            this.attach (button_4, 0, 2, 1, 1);
            this.attach (button_5, 1, 2, 1, 1);
            this.attach (button_6, 2, 2, 1, 1);
            
            this.attach (button_1, 0, 3, 1, 1);
            this.attach (button_2, 1, 3, 1, 1);
            this.attach (button_3, 2, 3, 1, 1);
            
            this.attach (button_0, 0, 4, 1, 1);
            this.attach (button_point, 1, 4, 1, 1);
            this.attach (button_percent, 2, 4, 1, 1);
            
            this.attach (button_back, 4, 0, 1, 1);
            this.attach (button_del, 5, 0, 1, 1);
            this.attach (button_add, 4, 1, 1, 1);
            this.attach (button_sub, 5, 1, 1, 1);
            this.attach (button_mult, 4, 2, 1, 1);
            this.attach (button_div, 5, 2, 1, 1);
            this.attach (button_bracket_left, 4, 3, 1, 1);
            this.attach (button_bracket_right, 5, 3, 1, 1);
            this.attach (button_calc, 4, 4, 2, 1);
            
            button_0.clicked.connect (() => { eutils.addToEntry ("0"); });
            button_1.clicked.connect (() => { eutils.addToEntry ("1"); });
            button_2.clicked.connect (() => { eutils.addToEntry ("2"); });
            button_3.clicked.connect (() => { eutils.addToEntry ("3"); });
            button_4.clicked.connect (() => { eutils.addToEntry ("4"); });
            button_5.clicked.connect (() => { eutils.addToEntry ("5"); });
            button_6.clicked.connect (() => { eutils.addToEntry ("6"); });
            button_7.clicked.connect (() => { eutils.addToEntry ("7"); });
            button_8.clicked.connect (() => { eutils.addToEntry ("8"); });
            button_9.clicked.connect (() => { eutils.addToEntry ("9"); });
            
            button_add.clicked.connect (() => { eutils.addToEntry ("+"); });
            button_sub.clicked.connect (() => { eutils.addToEntry ("-"); });
            button_div.clicked.connect (() => { eutils.addToEntry ("/"); });
            button_mult.clicked.connect (() => { eutils.addToEntry ("*"); });
            
            button_bracket_left.clicked.connect (() => { eutils.addToEntry ("("); });
            button_bracket_right.clicked.connect (() => { eutils.addToEntry (")"); });
            
            button_point.clicked.connect (() => { eutils.addToEntry ("."); });
            button_percent.clicked.connect (() => { eutils.addToEntry ("%"); });
            
            button_calc.clicked.connect (() => {

            });
            
            button_del.clicked.connect (() => { 
                eutils.delEntry ();
            });
            
            button_back.clicked.connect (() => {
                eutils.backEntry ();
            });
            
            this.show_all ();
        }
    }
}
