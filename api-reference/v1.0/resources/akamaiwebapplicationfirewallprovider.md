---
title: "akamaiWebApplicationFirewallProvider resource type"
description: "Represents configuration and credentials for an Akamai web application firewall (WAF) provider integration."
author: "more-rasika"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# akamaiWebApplicationFirewallProvider resource type

Namespace: microsoft.graph



Represents an Akamai web application firewall (WAF) provider configuration integrated with Entra External ID.

Inherits from [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md).


## Methods
None.

For the list of API operations for managing this resource type, see the [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessToken|String|Akamai API access token used to authenticate to the Akamai account. Contact your Akamai Customer Success Manager for assistance with your accessToken.|
|clientSecret|String|Akamai API client secret used in conjunction with the client token and access token for authentication. Contact your Akamai Customer Success Manager for assistance with this information.|
|clientToken|String|Akamai API client token used for authentication to the Akamai account. Contact your Akamai Customer Success Manager for assistance with this information.|
|displayName|String|The friendly display name of the Akamai provider configuration. Inherited from [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md).|
|hostPrefix|String|Prefix used to identify the host or domain in Akamai configuration operations. This value may be required for certain API calls or configuration scenarios.|
|id|String|Unique identifier for the provider resource. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.akamaiWebApplicationFirewallProvider",
  "baseType": "microsoft.graph.webApplicationFirewallProvider",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.akamaiWebApplicationFirewallProvider",
  "id": "String (identifier)",
  "displayName": "String",
  "hostPrefix": "String",
  "clientSecret": "String",
  "clientToken": "String",
  "accessToken": "String"
}
```

