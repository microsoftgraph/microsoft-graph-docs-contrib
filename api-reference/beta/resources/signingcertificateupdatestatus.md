---
title: "signingCertificateUpdateStatus resource type"
description: "Provides status of the last update of the signing certificate."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# signingCertificateUpdateStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides status and timestamp of the last update of the signing certificate. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|certificateUpdateResult|String|Status of the last certificate update. Read-only. For a list of statuses, see [certificateUpdateResult status](#certificateupdateresult-status).|
|lastRunDateTime|DateTimeOffset|Date and time in ISO 8601 format and in UTC time when the certificate was last updated. Read-only. |

### certificateUpdateResult status
| Value | Description |
| :--- | :--- |
|success|The certificate update operation was successful.|
|unknownError|The reason for failure is undefined.|
|internalServerError|There was an internal server error while processing the request.|
|noValidExistingCertFound|No valid existing signing certificate was found.|
|noStsAuthUrlFound|No STS authentication URL was found.|
|noFederationProtocolFound|The federation protocol was undefined.|
|noNewCertificateFound|No new certificate was found.|
|couldNotAccessRemoteHost|Could not reach the provider to get the new certificates.|
|connectionError|There was a connection error, for example, a connection time out.|
|xmlParsingError|Failed to parse the XML.|
|badRequest|Received a `400 BadRequest` error code in the fed metadata request.|
|unauthorized|Received `401 Unauthorized` error code in the fed metadata request.|
|forbidden|Received `403 Forbidden` error code in the fed metadata request.|
|notFound|Received `404 NotFound` error code in the fed metadata request.|
|providerError|Received a `500 InternalServerError` error code from the provider.|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.signingCertificateUpdateStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.signingCertificateUpdateStatus",
  "certificateUpdateResult": "String",
  "lastRunDateTime": "String (timestamp)"
}
```

