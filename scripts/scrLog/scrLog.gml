function Log(msg)
{
	var _message;
	_message = argument0;

	var _log_to_screen = false;

	if ( _log_to_screen )
	{
	    show_debug_message(_message);
	}
	else
	{
	    var _log_file = file_text_open_append("debug.log")
	    file_text_write_string(_log_file, _message + "\n")
	    file_text_close(_log_file)
	}
}