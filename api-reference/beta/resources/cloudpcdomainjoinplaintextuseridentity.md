---
title: "cloudPcDomainJoinPlainTextUserIdentity resource type"
description: "Represents an Active Directory user identity whose user principal name is specified directly in a request."
author: "t-bzhan"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 09/17/2026
---

# cloudPcDomainJoinPlainTextUserIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Active Directory user identity whose user principal name is specified directly in a request.

Inherits from [cloudPcDomainJoinUserIdentity](../resources/cloudpcdomainjoinuseridentity.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|domainUserPrincipalName|String|The user principal name of an Active Directory account that has sufficient permissions to join devices to the domain. The value must be in UPN format, for example, `domainjoin@ad.contoso.com`. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcDomainJoinPlainTextUserIdentity",
  "baseType": "microsoft.graph.cloudPcDomainJoinUserIdentity"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcDomainJoinPlainTextUserIdentity",
  "domainUserPrincipalName": "String"
}
```
