---
title: "cloudFlareWebApplicationFirewallProvider resource type"
description: "Represents configuration and credentials for a Cloudflare web application firewall (WAF) provider integration for Entra External ID."
author: "more-rasika"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# cloudFlareWebApplicationFirewallProvider resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Cloudflare web application firewall (WAF) provider configuration integrated with Entra External ID. 

Inherits from [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md).


## Methods
None.

For the list of API operations for managing this resource type, see the [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|apiToken|String|Cloudflare API token or credential used by Microsoft services to authenticate to the Cloudflare account. Contact your Cloudflare Customer Success Manager for assistance with your apitoken.|
|displayName|String|The friendly display name of the Cloudflare provider configuration. Inherited from [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md).|
|id|String|Unique identifier for the provider resource. Inherited from [entity](../resources/entity.md).|
|zoneId|String|Default Cloudflare Zone ID associated with this provider configuration. This ID identifies the DNS zone in Cloudflare that is commonly used for verification and configuration operations for the provider.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudFlareWebApplicationFirewallProvider",
  "baseType": "microsoft.graph.webApplicationFirewallProvider",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudFlareWebApplicationFirewallProvider",
  "id": "String (identifier)",
  "displayName": "String",
  "apiToken": "String",
  "zoneId": "String"
}
```

