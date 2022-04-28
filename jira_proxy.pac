function FindProxyForURL(url, host) {
    return 'SOCKS5 localhost:9999; SOCKS localhost:9999; DIRECT';
}
