function FindProxyForURL(url, host) { 
    if (shExpMatch(host, '*jira*')) {
        return 'SOCKS5 localhost:9999; SOCKS localhost:9999; DIRECT';
    }
    return 'DIRECT';
}
