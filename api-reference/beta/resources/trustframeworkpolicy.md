---
title: "trustFrameworkPolicy"
description: "In the Azure AD B2C trust framework policy is referred to as custom policies. This describes the operations available on a trustFrameworkPolicy object for the tenant."
ms.localizationpriority: medium
author: "gysingh"
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 10/17/2024
---
# trustFrameworkPolicy resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a [Trust Framework](/azure/active-directory-b2c/active-directory-b2c-reference-trustframeworks-defined-ief-custom) policy (also called [custom policy](/azure/active-directory-b2c/active-directory-b2c-overview-custom)) in [Azure Active Directory B2C](/azure/active-directory-b2c/active-directory-b2c-overview). A Trust Framework policy gives full control over the user journeys. Use it to:

* Customize the sign-up and sign-in experiences fully.
* Federate to any SAML, OpenID Connect, or OAuth2 identity provider.
* Integrate with other systems or user data stores by calling REST endpoints.
* Transform claims and customize tokens issued to the relying party application.

For more information, see [Custom policies in Azure Active Directory B2C](/azure/active-directory-b2c/active-directory-b2c-overview-custom).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create](../api/trustframework-post-trustframeworkpolicy.md)|trustFrameworkPolicy|Create a new trustFrameworkPolicy.|
|[Get](../api/trustframeworkpolicy-get.md) |trustFrameworkPolicy|Read properties of an existing trustFrameworkPolicy.|
|[List](../api/trustframework-list-trustframeworkpolicies.md)|trustFrameworkPolicy collection|List all trustFrameworkPolicies configured in a tenant.|
|[Update](../api/trustframework-put-trustframeworkpolicy.md)|None|Update an existing trustFrameworkPolicy.|
|[Delete](../api/trustframeworkpolicy-delete.md)|None|Delete an existing trustFrameworkPolicy.|

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|id|String|The ID of the policy.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "baseType":"microsoft.graph.entity",
  "keyProperty":"id",
  "isMediaEntity":true,
  "@odata.type": "microsoft.graph.trustFrameworkPolicy"
}-->
```json
{
   "id": "B2C_1A_Test"
}
```

## Related content

- [trustFrameworkPolicy schema](/azure/active-directory-b2c/trustframeworkpolicy) for information about the schema elements.
- [trustFrameworkPolicy.xsd](https://github.com/Azure-Samples/active-directory-b2c-custom-policy-starterpack/blob/master/TrustFrameworkPolicy_0.3.0.0.xsd)
