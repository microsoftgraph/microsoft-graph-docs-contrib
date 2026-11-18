---
title: "entityMapping resource type"
description: "Represent an abstract base type for mappings that translate detection query columns into alert entities."
author: "mmekler"
ms.date: 08/25/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# entityMapping resource type

Namespace: microsoft.graph.security

This type is abstract and can't be instantiated directly. It's the base type for the following entity mapping types:

- [accountEntityMapping](../resources/security-accountentitymapping.md)
- [amazonResourceEntityMapping](../resources/security-amazonresourceentitymapping.md)
- [azureResourceEntityMapping](../resources/security-azureresourceentitymapping.md)
- [cloudApplicationEntityMapping](../resources/security-cloudapplicationentitymapping.md)
- [dnsEntityMapping](../resources/security-dnsentitymapping.md)
- [fileEntityMapping](../resources/security-fileentitymapping.md)
- [googleCloudResourceEntityMapping](../resources/security-googlecloudresourceentitymapping.md)
- [hostEntityMapping](../resources/security-hostentitymapping.md)
- [ipEntityMapping](../resources/security-ipentitymapping.md)
- [mailboxEntityMapping](../resources/security-mailboxentitymapping.md)
- [mailClusterEntityMapping](../resources/security-mailclusterentitymapping.md)
- [mailMessageEntityMapping](../resources/security-mailmessageentitymapping.md)
- [oAuthApplicationEntityMapping](../resources/security-oauthapplicationentitymapping.md)
- [processEntityMapping](../resources/security-processentitymapping.md)
- [registryValueEntityMapping](../resources/security-registryvalueentitymapping.md)
- [securityGroupEntityMapping](../resources/security-securitygroupentitymapping.md)
- [urlEntityMapping](../resources/security-urlentitymapping.md)

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.entityMapping",
  "abstract": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.entityMapping"
}
```
