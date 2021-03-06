note
	description	: "Root class for this application."
	author		: "Generated by the New Vision2 Application Wizard."
	date		: "$Date: 2007/7/16 12:52:13 $"
	revision	: "1.0.0"

class
	APPLICATION

inherit
	EV_APPLICATION

create
	make_and_launch

feature {NONE} -- Initialization

	make_and_launch
			-- Initialize and launch application
		do
			default_create
			prepare
			launch
		end

	prepare
			-- Prepare the first window to be displayed.
		local
			recursive_highlighting: RECURSIVE_HIGHLIGHTING
		do
			create first_window
			create recursive_highlighting
			first_window.set_example (recursive_highlighting, agent recursive_highlighting.show)
			first_window.set_title ("Assignment 9 (recursive highlighting)")
			first_window.show
		end

feature {NONE} -- Implementation

	first_window: TRAFFIC_MAIN_WINDOW
			-- Main window.

end -- class APPLICATION
