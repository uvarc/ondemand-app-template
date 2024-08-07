![UVA Research Computing Logo](https://learning.rc.virginia.edu/img/RC_logo.svg)
# Open OnDemand Static App Template

This template is designed for creating a basic static application in Open OnDemand that displays the results of the `ls` command. It can be easily adapted to run any terminal command you desire.

## Installation and Usage

1. Create a new Sandbox app in Open OnDemand.

2. Insert the repository link and name the app whatever you wish.

3. Upon opening the app, initialize it by clicking the red button.

3. Open the app again to view the real-time output of the `ls` command.

## Customization

To customize the command that the app runs, modify the command in `@command.exec` in `app.rb`. Be sure to properly parse the output of the command in both `command.rb` and `index.erb` if needed.

## Contact

For questions or support, please contact the University of Virginia Research Computing support team.