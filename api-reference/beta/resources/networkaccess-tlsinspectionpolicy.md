---
title: "tlsInspectionPolicy resource type"
description: "Let's you configure TLS termination for your organization's network traffic within Global Secure Access."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
toc.title: Policy
---

# tlsInspectionPolicy resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Let's you configure TLS termination for your organization's network traffic within Global Secure Access. You can link the policy to a filtering profile using the [microsoft.graph.networkaccess.tlsInspectionPolicyLink resource](../resources/networkaccess-tlsInspectionPolicyLink.md). Each filtering profile can hold only one **tlsInspectionPolicyLink**.


Inherits from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).


## Methods

|Method|Return Type|Description|
|:---|:---|:---|
|[List policies](../api/networkaccess-networkaccessroot-list-tlsinspectionpolicies.md)|[tlsInspectionPolicy](networkaccess-tlsinspectionpolicy.md) collection|Get a list of tlsInspectionPolicy objects.|
|[Get policy](../api/networkaccess-tlsinspectionpolicy-get.md)|[tlsInspectionPolicy](networkaccess-tlsinspectionpolicy.md)|Get a single tlsInspectionPolicy object.|
|[Create policy](../api/networkaccess-networkaccessroot-post-tlsinspectionpolicies.md)|[tlsInspectionPolicy](networkaccess-tlsinspectionpolicy.md)|Create a new tlsInspectionPolicy.|
|[Update policy](../api/networkaccess-tlsinspectionpolicy-update.md)|None|Update properties of a tlsInspectionPolicy object.|
|[Delete policy](../api/networkaccess-tlsinspectionpolicy-delete.md)|None|Delete a tlsInspectionPolicy object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|description|String|Optional description of the policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Supports `$filter` (`eq`, `ne`, `startsWith`)|
|id|String|The unique identifier for the policy. Read-only. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|
|lastModifiedDateTime|DateTimeOffset|The timestamp of when the policy was last modified. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`) and `$orderby`. Read-only.|
|name|String|The display name of the policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|
|settings|[microsoft.graph.networkaccess.tlsInspectionPolicySettings](networkaccess-tlsinspectionpolicysettings.md)|Settings that configure the default behavior of the policy.|
|version|String|Version number of the policy. Supports `$filter` (`eq`, `ne`, `startsWith`). Read-only. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|policyRules|[microsoft.graph.networkaccess.tlsInspectionRule](networkaccess-tlsinspectionrule.md) collection|Collection of rules that define the specific matching conditions and desired actions for TLS inspection. Must contain rules of type `tlsInspectionRule` only. Inherited from Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.tlsInspectionPolicy"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionPolicy",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "settings": {
    "@odata.type": "microsoft.graph.networkaccess.tlsInspectionPolicySettings"
  },
  "version": "String"
}
```
