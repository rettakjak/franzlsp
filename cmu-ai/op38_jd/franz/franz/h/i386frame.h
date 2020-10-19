/*
 * C stack frame  (machine frame -- hence "machframe")
 *
 * Decreasing addresses:
 *
 *   arg n
 *   ...
 *   arg 1
 *   saved pc (return address)
 *   saved fp (pointer to caller's frame)_
 *   1st local
 *   ... more locals ...
 *
 */

struct machframe {
struct 	machframe *fp;
	lispval	(*pc)();
	lispval ap[1];
};
