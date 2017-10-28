GFWLIST_LOCAL = ~/src/gfwlist/gfwlist.txt

all: ~/.autoproxy.pac

~/.autoproxy.pac: $(GFWLIST_LOCAL) user-rules.txt
	genpac \
		--user-rule-from=user-rules.txt \
		--format pac \
		--output ~/.autoproxy.pac \
		--pac-proxy "SOCKS5 127.0.0.1:1080; DIRECT" \
		--gfwlist-local $(GFWLIST_LOCAL)

