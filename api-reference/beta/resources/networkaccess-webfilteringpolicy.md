---
title: "webFilteringPolicy resource type"
description: "Defines a set of web filtering rules and default behavior for traffic evaluated by Global Secure Access."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# webFilteringPolicy resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines a set of web filtering rules and the default action that Global Secure Access applies to traffic that does not match a rule.

Inherits from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-networkaccessroot-list-webfilteringpolicies.md)|[microsoft.graph.networkaccess.webFilteringPolicy](../resources/networkaccess-webfilteringpolicy.md) collection|Get a list of the webFilteringPolicy objects and their properties.|
|[Create](../api/networkaccess-networkaccessroot-post-webfilteringpolicies.md)|[microsoft.graph.networkaccess.webFilteringPolicy](../resources/networkaccess-webfilteringpolicy.md)|Create a new webFilteringPolicy object.|
|[Get](../api/networkaccess-webfilteringpolicy-get.md)|[microsoft.graph.networkaccess.webFilteringPolicy](../resources/networkaccess-webfilteringpolicy.md)|Read the properties and relationships of [microsoft.graph.networkaccess.webFilteringPolicy](../resources/networkaccess-webfilteringpolicy.md) object.|
|[Update](../api/networkaccess-webfilteringpolicy-update.md)|[microsoft.graph.networkaccess.webFilteringPolicy](../resources/networkaccess-webfilteringpolicy.md)|Update the properties of a webFilteringPolicy object.|
|[Delete](../api/networkaccess-networkaccessroot-delete-webfilteringpolicies.md)|None|Delete a webFilteringPolicy object.|
|[List policyRules](../api/networkaccess-webfilteringpolicy-list-policyrules.md)|[microsoft.graph.networkaccess.webFilteringRule](../resources/networkaccess-webfilteringrule.md) collection|Get the rules associated with the web filtering policy.|
|[Create policyRule](../api/networkaccess-webfilteringpolicy-post-policyrules.md)|[microsoft.graph.networkaccess.webFilteringRule](../resources/networkaccess-webfilteringrule.md)|Create a new webFilteringRule object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|The description of the web filtering policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|
|id|String|The unique identifier for the web filtering policy. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the web filtering policy was last modified. Read-only.|
|name|String|The display name of the web filtering policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|
|settings|[microsoft.graph.networkaccess.webFilteringPolicySettings](../resources/networkaccess-webfilteringpolicysettings.md)|The default settings for the web filtering policy.|
|version|String|The version of the web filtering policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policyRules|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) collection|The rules evaluated as part of the policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.webFilteringPolicy",
  "baseType": "microsoft.graph.networkaccess.policy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringPolicy",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "version": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "settings": {
    "@odata.type": "microsoft.graph.networkaccess.webFilteringPolicySettings"
  }
}
```
