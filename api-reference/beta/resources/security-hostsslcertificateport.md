---
title: "hostSslCertificatePort resource type"
description: "Ports of a host where a hostSslCertificate is/was previously related."
author: "nblankenau"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# hostSslCertificatePort resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the ports of a **host** where this **hostSslCertificate** is currently or was previously related.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|firstSeenDateTime|DateTimeOffset|The first date and time that this port was observed.|
|lastSeenDateTime|DateTimeOffset|The most recent date and time that this port was observed.|
|port|Int32|The port number.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.hostSslCertificatePort"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.hostSslCertificatePort",
  "port": "Integer",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)"
}
```

