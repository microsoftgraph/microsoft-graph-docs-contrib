---
title: "tlsInspectionPolicy resource type"
description: "A TLS inspection policy allows Global Secure Access admins to configure tls termination for their network traffic within GSA."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# tlsInspectionPolicy resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A `tlsInspectionPolicy` allows Global Secure Access admins to configure tls termination for their network traffic within GSA.

A `tlsInspectionPolicy` can be linked to a filteringProfile using a [microsoft.graph.networkaccess.tlsInspectionPolicyLink](../resources/networkaccess-tlsInspectionPolicyLink.md). Each filteringProfile is allowed to hold a single tlsInspectionPolicyLink.


Inherits from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).


## Methods

|Method|Return Type|Description|
|:---|:---|:---|
|[List policies](../api/networkaccess-networkaccessroot-list-tlsinspectionpolicies.md)|[tlsInspectionPolicy](networkaccess-tlsinspectionpolicy.md) collection|Get a list of tlsInspectionPolicy objects.|
|[Get policy](../api/networkaccess-tlsinspectionpolicy-get.md)|[tlsInspectionPolicy](networkaccess-tlsinspectionpolicy.md)|Get a single tlsInspectionPolicy object.|
|[Create policy](../api/networkaccess-networkaccessroot-post-tlsinspectionpolicies.md)|[tlsInspectionPolicy](networkaccess-tlsinspectionpolicy.md)|Create a new tlsInspectionPolicy.|
|[Update policy](../api/networkaccess-tlsinspectionpolicy-update.md)|None|Update properties of a tlsInspectionPolicy object.|
|[Delete policy](../api/networkaccess-tlsinspectionpolicy-delete.md)|None|Delete a tlsInspectionPolicy object.|
|[List rules](../api/networkaccess-tlsinspectionpolicy-list-policyrules.md)|[tlsInspectionRule](networkaccess-tlsinspectionrule.md) collection|Get a list of tlsInspectionRule objects.|
|[Create rule](../api/networkaccess-tlsinspectionpolicy-post-policyrules.md)|[tlsInspectionRule](networkaccess-tlsinspectionrule.md)|Create a new tlsInspectionRule.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the policy. Read-only.|
|name|String|The display name of the policy.|
|description|String|Optional description of the policy.|
|lastModifiedDateTime|DateTimeOffset|The timestamp of when the policy was last modified. Read-only.|
|settings|[tlsInspectionPolicySettings](networkaccess-tlsinspectionpolicysettings.md)|Settings that configure the default behavior of the policy.|
|version|String|Version number of the policy. Read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|policyRules|[tlsInspectionRule](networkaccess-tlsinspectionrule.md) collection|Collection of rules that define the specific maching conditions and desired actions for TLS inspection.  Must contain rules of type `tlsInspectionRule` only.|

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
