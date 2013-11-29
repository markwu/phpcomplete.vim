call extend(g:php_constants, {
\ 'RADIUS_ACCESS_REQUEST': '',
\ 'RADIUS_ACCOUNTING_REQUEST': '',
\ 'RADIUS_VENDOR_SPECIFIC': '',
\ 'RADIUS_OPTION_TAGGED': '',
\ 'RADIUS_OPTION_SALT': '',
\ 'RADIUS_ACCESS_ACCEPT': '',
\ 'RADIUS_ACCESS_REJECT': '',
\ 'RADIUS_ACCESS_CHALLENGE': '',
\ 'RADIUS_USER_NAME': '',
\ 'RADIUS_USER_PASSWORD': '',
\ 'RADIUS_CHAP_PASSWORD': '',
\ 'RADIUS_CHAP_CHALLENGE': '',
\ 'RADIUS_NAS_IP_ADDRESS': '',
\ 'RADIUS_NAS_PORT': '',
\ 'RADIUS_SERVICE_TYPE': '',
\ 'RADIUS_LOGIN': '',
\ 'RADIUS_FRAMED': '',
\ 'RADIUS_CALLBACK_LOGIN': '',
\ 'RADIUS_CALLBACK_FRAMED': '',
\ 'RADIUS_OUTBOUND': '',
\ 'RADIUS_ADMINISTRATIVE': '',
\ 'RADIUS_NAS_PROMPT': '',
\ 'RADIUS_AUTHENTICATE_ONLY': '',
\ 'RADIUS_CALLBACK_NAS_PROMPT': '',
\ 'RADIUS_FRAMED_PROTOCOL': '',
\ 'RADIUS_PPP': '',
\ 'RADIUS_SLIP': '',
\ 'RADIUS_ARAP': '',
\ 'RADIUS_GANDALF': '',
\ 'RADIUS_XYLOGICS': '',
\ 'RADIUS_FRAMED_IP_ADDRESS': '',
\ 'RADIUS_FRAMED_IP_NETMASK': '',
\ 'RADIUS_FRAMED_ROUTING': '',
\ 'RADIUS_FILTER_ID': '',
\ 'RADIUS_FRAMED_MTU': '',
\ 'RADIUS_FRAMED_COMPRESSION': '',
\ 'RADIUS_COMP_NONE': '',
\ 'RADIUS_COMP_VJ': '',
\ 'RADIUS_COMP_IPXHDR': '',
\ 'RADIUS_COMP_STAC_LZS': '',
\ 'RADIUS_LOGIN_IP_HOST': '',
\ 'RADIUS_LOGIN_SERVICE': '',
\ 'RADIUS_LOGIN_TCP_PORT': '',
\ 'RADIUS_REPLY_MESSAGE': '',
\ 'RADIUS_CALLBACK_NUMBER': '',
\ 'RADIUS_CALLBACK_ID': '',
\ 'RADIUS_FRAMED_ROUTE': '',
\ 'RADIUS_FRAMED_IPX_NETWORK': '',
\ 'RADIUS_STATE': '',
\ 'RADIUS_CLASS': '',
\ 'RADIUS_SESSION_TIMEOUT': '',
\ 'RADIUS_IDLE_TIMEOUT': '',
\ 'RADIUS_TERMINATION_ACTION': '',
\ 'RADIUS_CALLED_STATION_ID': '',
\ 'RADIUS_CALLING_STATION_ID': '',
\ 'RADIUS_NAS_IDENTIFIER': '',
\ 'RADIUS_PROXY_STATE': '',
\ 'RADIUS_LOGIN_LAT_SERVICE': '',
\ 'RADIUS_LOGIN_LAT_NODE': '',
\ 'RADIUS_LOGIN_LAT_GROUP': '',
\ 'RADIUS_FRAMED_APPLETALK_LINK': '',
\ 'RADIUS_FRAMED_APPLETALK_NETWORK': '',
\ 'RADIUS_FRAMED_APPLETALK_ZONE': '',
\ 'RADIUS_NAS_PORT_TYPE': '',
\ 'RADIUS_ASYNC': '',
\ 'RADIUS_SYNC': '',
\ 'RADIUS_ISDN_SYNC': '',
\ 'RADIUS_ISDN_ASYNC_V120': '',
\ 'RADIUS_ISDN_ASYNC_V110': '',
\ 'RADIUS_VIRTUAL': '',
\ 'RADIUS_PIAFS': '',
\ 'RADIUS_HDLC_CLEAR_CHANNEL': '',
\ 'RADIUS_X_25': '',
\ 'RADIUS_X_75': '',
\ 'RADIUS_G_3_FAX': '',
\ 'RADIUS_SDSL': '',
\ 'RADIUS_ADSL_CAP': '',
\ 'RADIUS_ADSL_DMT': '',
\ 'RADIUS_IDSL': '',
\ 'RADIUS_ETHERNET': '',
\ 'RADIUS_XDSL': '',
\ 'RADIUS_CABLE': '',
\ 'RADIUS_WIRELESS_OTHER': '',
\ 'RADIUS_WIRELESS_IEEE_802_11': '',
\ 'RADIUS_PORT_LIMIT': '',
\ 'RADIUS_LOGIN_LAT_PORT': '',
\ 'RADIUS_CONNECT_INFO': '',
\ 'RADIUS_ACCT_STATUS_TYPE': '',
\ 'RADIUS_START': '',
\ 'RADIUS_STOP': '',
\ 'RADIUS_ACCOUNTING_ON': '',
\ 'RADIUS_ACCOUNTING_OFF': '',
\ 'RADIUS_ACCT_DELAY_TIME': '',
\ 'RADIUS_ACCT_INPUT_OCTETS': '',
\ 'RADIUS_ACCT_OUTPUT_OCTETS': '',
\ 'RADIUS_ACCT_SESSION_ID': '',
\ 'RADIUS_ACCT_AUTHENTIC': '',
\ 'RADIUS_AUTH_RADIUS': '',
\ 'RADIUS_AUTH_LOCAL': '',
\ 'RADIUS_AUTH_REMOTE': '',
\ 'RADIUS_ACCT_SESSION_TIME': '',
\ 'RADIUS_ACCT_INPUT_PACKETS': '',
\ 'RADIUS_ACCT_OUTPUT_PACKETS': '',
\ 'RADIUS_ACCT_TERMINATE_CAUSE': '',
\ 'RADIUS_TERM_USER_REQUEST': '',
\ 'RADIUS_TERM_LOST_CARRIER': '',
\ 'RADIUS_TERM_LOST_SERVICE': '',
\ 'RADIUS_TERM_IDLE_TIMEOUT': '',
\ 'RADIUS_TERM_SESSION_TIMEOUT': '',
\ 'RADIUS_TERM_ADMIN_RESET': '',
\ 'RADIUS_TERM_ADMIN_REBOOT': '',
\ 'RADIUS_TERM_PORT_ERROR': '',
\ 'RADIUS_TERM_NAS_ERROR': '',
\ 'RADIUS_TERM_NAS_REQUEST': '',
\ 'RADIUS_TERM_NAS_REBOOT': '',
\ 'RADIUS_TERM_PORT_UNNEEDED': '',
\ 'RADIUS_TERM_PORT_PREEMPTED': '',
\ 'RADIUS_TERM_PORT_SUSPENDED': '',
\ 'RADIUS_TERM_SERVICE_UNAVAILABLE': '',
\ 'RADIUS_TERM_CALLBACK': '',
\ 'RADIUS_TERM_USER_ERROR': '',
\ 'RADIUS_TERM_HOST_REQUEST': '',
\ 'RADIUS_ACCT_MULTI_SESSION_ID': '',
\ 'RADIUS_ACCT_LINK_COUNT': '',
\ 'RADIUS_ACCOUNTING_RESPONSE': '',
\ 'RADIUS_COA_REQUEST': '',
\ 'RADIUS_COA_ACK': '',
\ 'RADIUS_COA_NAK': '',
\ 'RADIUS_DISCONNECT_REQUEST': '',
\ 'RADIUS_DISCONNECT_ACK': '',
\ 'RADIUS_DISCONNECT_NAK': '',
\ 'RADIUS_VENDOR_MICROSOFT': '',
\ 'RADIUS_MICROSOFT_MS_CHAP_RESPONSE': '',
\ 'RADIUS_MICROSOFT_MS_CHAP_ERROR': '',
\ 'RADIUS_MICROSOFT_MS_CHAP_PW_1': '',
\ 'RADIUS_MICROSOFT_MS_CHAP_PW_2': '',
\ 'RADIUS_MICROSOFT_MS_CHAP_LM_ENC_PW': '',
\ 'RADIUS_MICROSOFT_MS_CHAP_NT_ENC_PW': '',
\ 'RADIUS_MICROSOFT_MS_MPPE_ENCRYPTION_POLICY': '',
\ 'RADIUS_MICROSOFT_MS_MPPE_ENCRYPTION_TYPES': '',
\ 'RADIUS_MICROSOFT_MS_RAS_VENDOR': '',
\ 'RADIUS_MICROSOFT_MS_CHAP_DOMAIN': '',
\ 'RADIUS_MICROSOFT_MS_CHAP_CHALLENGE': '',
\ 'RADIUS_MICROSOFT_MS_CHAP_MPPE_KEYS': '',
\ 'RADIUS_MICROSOFT_MS_BAP_USAGE': '',
\ 'RADIUS_MICROSOFT_MS_LINK_UTILIZATION_THRESHOLD': '',
\ 'RADIUS_MICROSOFT_MS_LINK_DROP_TIME_LIMIT': '',
\ 'RADIUS_MICROSOFT_MS_MPPE_SEND_KEY': '',
\ 'RADIUS_MICROSOFT_MS_MPPE_RECV_KEY': '',
\ 'RADIUS_MICROSOFT_MS_RAS_VERSION': '',
\ 'RADIUS_MICROSOFT_MS_OLD_ARAP_PASSWORD': '',
\ 'RADIUS_MICROSOFT_MS_NEW_ARAP_PASSWORD': '',
\ 'RADIUS_MICROSOFT_MS_ARAP_PASSWORD_CHANGE_REASON': '',
\ 'RADIUS_MICROSOFT_MS_FILTER': '',
\ 'RADIUS_MICROSOFT_MS_ACCT_AUTH_TYPE': '',
\ 'RADIUS_MICROSOFT_MS_ACCT_EAP_TYPE': '',
\ 'RADIUS_MICROSOFT_MS_CHAP2_RESPONSE': '',
\ 'RADIUS_MICROSOFT_MS_CHAP2_SUCCESS': '',
\ 'RADIUS_MICROSOFT_MS_CHAP2_PW': '',
\ 'RADIUS_MICROSOFT_MS_PRIMARY_DNS_SERVER': '',
\ 'RADIUS_MICROSOFT_MS_SECONDARY_DNS_SERVER': '',
\ 'RADIUS_MICROSOFT_MS_PRIMARY_NBNS_SERVER': '',
\ 'RADIUS_MICROSOFT_MS_SECONDARY_NBNS_SERVER': '',
\ 'RADIUS_MICROSOFT_MS_ARAP_CHALLENGE': '',
\ })
