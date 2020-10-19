






                                  CCHHAAPPTTEERR  1177


                                  HHaasshh TTaabblleess






             11..11..  OOvveerrvviieeww

                     A  hash  table  is an object that can efficiently
                map a given object to another.  Each hash table  is  a
                collection  of  entries,  each  of  which associates a
                unique _k_e_y with a _v_a_l_u_e.  There  are  elemental  func-
                tions to add, delete, and find entries based on a par-
                ticular key.  Finding a value in a hash table is rela-
                tively  fast  compared  to  looking  up values in, for
                example, an assoc list or property list.

                     Adding a key to a hash table  modifies  the  hash
                table, and so it is a descructive operation.

                     There  are  two  different  kinds of hash tables:
                those that use the function _e_q_u_a_l for the comparing of
                keys, and those that use _e_q, the default.  If a key is
                "eq" to another  object,  then  a  match  is  assumed.
                Likewise with "equal".



             11..22..  FFuunnccttiioonnss

          ((mmaakkeehhtt 'x_size ['s_test]))

               RETURNS: A  hash table of x_size hash buckets.  If pre-
                        sent, s_test is used as the  test  to  compare
                        keys  in the hash table, the default being eeqq.
                        _E_q_u_a_l might be used to  create  a  hash  table
                        where  the  keys  are to be lists (or any lisp
                        object).

               NOTE: At this time, hash tables are implemented on  top
                     of vectors.










          HHaasshh TTaabblleess                                             1177--11







          HHaasshh TTaabblleess                                             1177--22


          ((hhaasshh--ttaabbllee--pp 'H_arg))

               RETURNS: t if H_arg is a hash table.

               NOTE: Since  hash  tables  are really vectors, the lisp
                     type of a hash table is a vector, so that given a
                     vector, this function will return t.

          ((ggeetthhaasshh 'g_key 'H_htable ['g_default]))

               RETURNS: the  value  associated  the  key g_key in hash
                        table H_htable.  If  there  is  not  an  entry
                        given  by  the key and g_default is specified,
                        then g_default is returned, otherwise, a  sym-
                        bol  that  is unbound is returned.  This is so
                        that nniill can be a associated with a key.

               NOTE: _s_e_t_f may be used to set the value assocaited with
                     a key.

          ((rreemmhhaasshh 'g_key 'H_htable))

               RETURNS: t  if there was an entry for g_key in the hash
                        table H_htable, nil otherwise.  In the case of
                        a  match,  the entry and associated object are
                        removed from the hash table.

          ((mmaapphhaasshh 'u_func 'H_htable))

               RETURNS: nil.

               NOTE: The function u_func is applied to  every  element
                     in  the  hash  table  H_htable.   The function is
                     called with two arguments: the key and  value  of
                     an  element.   The mapped function should not add
                     or delete  object  from  the  table  because  the
                     results would be unpredicable.

          ((ccllrrhhaasshh 'H_htable))

               RETURNS: the hash table cleared of all entries.

          ((hhaasshh--ttaabbllee--ccoouunntt 'H_htable))

               RETURNS: the  number  of  entries in H_htable.  Given a
                        new hash table with no entries, this  function
                        returns zero.








                                             Printed: October 16, 1993







          HHaasshh TTaabblleess                                             1177--33



              ____________________________________________________

              ; make a vanilla hash table using "eq" to compare items...
              -> (setq black-box (makeht 20))
              hash-table[26]
              -> (hash-table-p black-box)
              t
              -> (hash-table-count black-box)
              0
              -> (setf (gethash 'key black-box) '(the value associated with the key))
              key
              -> (gethash 'key black-box)
              (the value associated with the key)
              -> (hash-table-count black-box)
              1
              -> (addhash 'composer black-box 'franz)
              composer
              -> (gethash 'composer black-box)
              franz
              -> (maphash '(lambda (key val) (msg "key " key " value " val N)) black-box)
              key composer value franz
              key key value (the value associated with the key)
              nil
              -> (clrhash black-box)
              hash-table[26]
              -> (hash-table-count black-box)
              0
              -> (maphash '(lambda (key val) (msg "key " key " value " val N)) black-box)
              nil

              ; here is an example using "equal" as the comparator
              -> (setq ht (makeht 10 'equal))
              hash-table[16]
              -> (setf (gethash '(this is a key) ht) '(and this is the value))
              (this is a key)
              -> (gethash '(this is a key) ht)
              (and this is the value)
              ; the reader makes a new list each time you type it...
              -> (setq x '(this is a key))
              (this is a key)
              -> (setq y '(this is a key))
              (this is a key)
              ; so these two lists are really different lists that compare "equal"
              ; not "eq"
              -> (eq x y)
              nil
              ; but since we are using "equal" to compare keys, we are OK...
              -> (gethash x ht)
              (and this is the value)
              -> (gethash y ht)
              (and this is the value)
              ____________________________________________________


                                             Printed: October 16, 1993







          HHaasshh TTaabblleess                                             1177--44

























































                                             Printed: October 16, 1993



