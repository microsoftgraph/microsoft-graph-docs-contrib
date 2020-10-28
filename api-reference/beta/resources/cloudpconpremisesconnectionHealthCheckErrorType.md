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
|dnsCheckFqdnNotFound|100|The dns check failed since the fully qualified domain name is not found|
|dnsCheckUnknownError|199|The dns check failed due to an unknown error
adJoinCheckFqdnNotFound 200 The active domain join check failed since the fully qualified domain name is not found|
|adJoinCheckIncorrectCredentials| 201| The active domain join check failed since the domain credentials are incorrect|
|adJoinCheckOrganizationalUnitNotFound| 202| The active domain join check failed since the specified organizational unit is not found|
|adJoinCheckOrganizationalUnitIncorrectFormat| 203| The active domain join check failed since the format of specified organizational unit is incorrect
adJoinCheckUnknownError 299 The active domain join check failed due to an unknown error|
|endpointConnectivityCheckUrlNotWhitelisted| 300| The endpoint connectivity check failed since the url is not whitelisted in the network firewall settings|
|endpointConnectivityCheckUnknownError| 399| The endpoint connectivity check failed due to an unknown error|
|aadConnectivityCheckUnknownError |499| The Azure active directy connectivity check failed due to an unknown error|
|resourceAvailabilityCheckNoSubnetIP |500| The resource availability check failed due to no available ip in the subnet|
|resourceAvailabilityCheckUnknownError |599| The resource availability check failed due to an unknown error|
|internalServerUnknownError |999| The health check failed due to an unknown internal server error|
