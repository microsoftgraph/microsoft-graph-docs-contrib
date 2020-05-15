---
title: "selfServiceSignUpAuthenticationFlowConfiguration resource type"
description: "The self-service sign up experience in regular Azure Active Directory (Azure AD) tenants enables users to initiate a self-service sign up flow."
author: "linkhp"
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# selfServiceSignUpAuthenticationFlowConfiguration resource type


Namespace: microsoft.graph

Represents the configurations related to self-service sign-up.

## Properties
|Property|Type|Description|Key|Required|ReadOnly|
|:-------|:---|:----------|:--|:-------|:-------|
|isEnabled|Boolean|Is self service sign up flow enabled or disabled. The default value is false. |No|Yes|No|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.selfServiceSignUpAuthenticationFlowConfiguration"
}
-->

``` json
{
  "isEnabled": "Boolean"
}
```
