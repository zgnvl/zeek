#
# @TEST-EXEC-FAIL: bro %INPUT >output 2>&1
# @TEST-EXEC:      TEST_DIFF_CANONIFIER=$SCRIPTS/diff-remove-abspath btest-diff output

event zeek_init()
{
    print TESTFAILURE;
}
