#SMTP Services Test

1. Type Telnet at a command prompt, and then press ENTER. 
2. At the telnet prompt, type set LocalEcho, press ENTER, and then type open
    <machinename> 25, and then press ENTER.
 
		220 computername.microsoft.com ESMTP Server (Microsoft Exchange Internet Mail Service 5.5.2651.58) ready

3. Type helo me, and then press ENTER.

		250 OK

4. Type mail from:email@domain.com, and then press ENTER. 

		250 OK - mail from <email@domain.com>

5. Type rcpt to:youremail@yourdomain.com, and then press ENTER.

		250 OK - Recipient <youremail@yourdomain.com>

6. Type Data, and then press ENTER.

		354 Send data.  End with CRLF.CRLF

7. Type Subject:This is a test, and then press ENTER two times.
8. Type Testing, and then press ENTER.
9. Press ENTER, type a period (.), and then press ENTER.

		250 OK

10. Type quit, and then press ENTER.

		221 Closing Port / Mail queued for delivery
