---
title: "cloudPcOnPremisesConnectionHealthCheckErrorType enum type"
description: "cloudPcOnPremisesConnection health check error values"
author: "jiajyang"
localization_priority: Normal
ms.prod: "microsoft_cloudpc"
doc_type: enumPageType
---

# cloudPcOnPremisesConnectionHealthCheckErrorType enum type

Namespace: microsoft.graph

Possible cloudPcOnPremisesConnection health check error values

## Members

|Member|Value|Description|
|:---|:---|:---|
|dnsCheckFqdnNotFound|100|The DNS check failed because the fully qualified domain name was not found.|
|dnsCheckUnknownError|199|The DNS check failed due to an unknown error.|
|adJoinCheckFqdnNotFound|200|The active domain join check failed because the fully qualified domain name was not found.|
|adJoinCheckIncorrectCredentials| 201|The active domain join check failed because the domain credentials are incorrect. |
|adJoinCheckOrganizationalUnitNotFound| 202|The active domain join check failed because the specified organizational unit was not found.|
|adJoinCheckOrganizationalUnitIncorrectFormat| 203|The active domain join check failed beccause the format of the specified organizational unit is incorrect. Example format: "OU=OU1,OU=OU2,OU=OU3,DC=DC1"|
|adJoinCheckUnknownError |299| The active domain join check failed due to an unknown error.|
|endpointConnectivityCheckUrlNotWhitelisted| 300|The endpoint connectivity check failed because the url isn’t on the allowlist in the network firewall settings.|
|endpointConnectivityCheckUnknownError| 399| The endpoint connectivity check failed due to an unknown error.|
|aadConnectivityCheckUnknownError |499| The Azure Active Directory connectivity check failed due to an unknown error.|
|resourceAvailabilityCheckNoSubnetIP |500| The resource availability check failed because there were no available IP addresses in the subnet.|
|resourceAvailabilityCheckUnknownError |599|The resource availability check failed due to an unknown error.|
|internalServerUnknownError |999|The health check failed due to an unknown internal server error.|
