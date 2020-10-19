/* ZFASL interface routine to be #included in compiled code */

extern clink();

init()
{
  clink(literals, get_table_size(literals), &linker,
	callnames, get_table_size(callnames), &trans,
	bindtab);
}

