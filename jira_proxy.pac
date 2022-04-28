function FindProxyForURL(url, host) {
    if (shExpMatch(host, '*://jira.tecgraf.puc-rio.br/*')) {
        return 'SOCKS localhost:9999; DIRECT';
    }
    return 'DIRECT';
}
