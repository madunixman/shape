INSERT INTO Policy VALUES('DD65EE00-5B14-404E-8189-6BDE1DCB3018','Thu Dec 23 01:22:52 2010','','Thu Dec 23 01:22:52 2010','2619318E-5649-45D8-B694-14551ED129BD','System Role','111');
INSERT INTO Policy VALUES('C01FDBCF-D03C-4DE6-A1B4-A01D0F707241','Thu Dec 23 01:22:52 2010','','Thu Dec 23 01:22:52 2010','822E1ECE-4A7F-4B37-BF18-EA8933AB8FB9','Generic Role','100');
INSERT INTO Resource VALUES('EA854643-A02D-4798-8EFE-E571BE936501','draft','__Payload_Data__','A draft model','Thu Dec 23 01:22:52 2010','','internal.draft','Thu Dec 23 01:22:52 2010',1);
INSERT INTO Role VALUES('2619318E-5649-45D8-B694-14551ED129BD','Thu Dec 23 01:22:52 2010','role-web-admin','Thu Dec 23 01:22:52 2010','System administration tasks');
INSERT INTO Role VALUES('E75C364A-06A0-43E6-9C81-6FA02F1A7203','Thu Dec 23 01:22:52 2010','role-commandline','Thu Dec 23 01:22:52 2010','System administration tasks');
INSERT INTO Role VALUES('822E1ECE-4A7F-4B37-BF18-EA8933AB8FB9','Thu Dec 23 01:22:52 2010','role-generic','Thu Dec 23 01:22:52 2010','Generic tasks');
INSERT INTO Usergroup VALUES('C399532B-364E-4EE1-A8EB-B5A18E6CDB96','Thu Dec 23 01:22:52 2010','group-users','Thu Dec 23 01:22:52 2010','Generic users group');
INSERT INTO Usergroup VALUES('B6EB55E2-0E5A-4EB5-8995-08F3617C51A4','Thu Dec 23 01:22:52 2010','group-wheel','Thu Dec 23 01:22:52 2010','System administration user group');
INSERT INTO User VALUES('1C7EEDF3-2779-4581-BCA6-B280C0C37A4A','root@localhost','Thu Dec 23 01:22:52 2010','dc76e9f0c0006e8f919e0c515c66dbba3982f785','root','root','Thu Dec 23 01:22:52 2010','user');
INSERT INTO User VALUES('87FFAB97-4A1F-46F5-88B9-9C2D2EBC442C','test@localhost','Thu Dec 23 01:22:52 2010','da39a3ee5e6b4b0d3255bfef95601890afd80709','test','test','Thu Dec 23 01:22:52 2010','user');
INSERT INTO Account VALUES('7F8705C9-21D0-497B-9052-882FABF64DB6','Thu Dec 23 01:22:52 2010','1C7EEDF3-2779-4581-BCA6-B280C0C37A4A',1,'Thu Dec 23 01:22:52 2010','2619318E-5649-45D8-B694-14551ED129BD','C399532B-364E-4EE1-A8EB-B5A18E6CDB96');
INSERT INTO Account VALUES('9C9E293D-9DCF-45D3-9382-612349E26CEB','Thu Dec 23 01:22:52 2010','1C7EEDF3-2779-4581-BCA6-B280C0C37A4A',1,'Thu Dec 23 01:22:52 2010','E75C364A-06A0-43E6-9C81-6FA02F1A7203','C399532B-364E-4EE1-A8EB-B5A18E6CDB96');
INSERT INTO Account VALUES('7A328CE7-182F-4F56-A7F6-CF9C2406A839','Thu Dec 23 01:22:52 2010','1C7EEDF3-2779-4581-BCA6-B280C0C37A4A',1,'Thu Dec 23 01:22:52 2010','822E1ECE-4A7F-4B37-BF18-EA8933AB8FB9','C399532B-364E-4EE1-A8EB-B5A18E6CDB96');
INSERT INTO Account VALUES('C6379B72-8162-4C13-952A-61E151BDF068','Thu Dec 23 01:22:52 2010','87FFAB97-4A1F-46F5-88B9-9C2D2EBC442C',0,'Thu Dec 23 01:22:52 2010','822E1ECE-4A7F-4B37-BF18-EA8933AB8FB9','B6EB55E2-0E5A-4EB5-8995-08F3617C51A4');
