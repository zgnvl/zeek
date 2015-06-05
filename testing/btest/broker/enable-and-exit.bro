# @TEST-EXEC: bro %INPUT >output
# @TEST-EXEC: btest-diff output

redef exit_only_after_terminate = T;

event terminate_me() {
        print "terminating";
        terminate();
}

event bro_init() {
        BrokerComm::enable();

        print "1";
        schedule 1sec { terminate_me() };
        print "2";
}