---
title: "keyValue resource type"
description: "Provides additional relevant information about the sign-in request"
ms.localizationpriority: medium
author: "besiler"
ms.prod: "identity-and-access-reports"
doc_type: "resourcePageType"
---

# keyValue resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides additional authentication processing information, such as the server name and the presence of hints for sign in and domain.
The configuration of this resource is shared by the following objects:
+ The **attributeCollection** property of the [contentCustomization](contentcustomization.md) complex type of [organizationalBrandingProperties](organizationalbrandingproperties.md).
+ The **additionalDetails** property of the [directoryAudit](directoryaudit.md) resource type.
+ The **authenticationProcessingDetails** property of the [signIn](signin.md) resource type.
+ The **additionalDetails** property of the [impactedResource](impactedresource.md) resource type.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|key|String|Contains the name of the field that a value is associated with. <!--When a sign in or domain hint is included in the sign-in request, corresponding fields are included as key-value pairs. Possible keys: `Login hint present`, `Domain hint present`.-->|
|value|String|Contains the corresponding value for the specified key. <!--The value is `true` if a sign in hint was included in the sign-in request; otherwise `false`. The value is `true` if a domain hint was included in the sign-in request; otherwise `false`.-->|

### Key-value pair names and values

#### Supported by organizationalBrandingProperties

| Key | Possible value |
|:-|:-|
| AttributeCollection_Description |  We just need a little more information to set up your account. |
| AttributeCollection_Title | Add details |
| Attribute_City |  City |
| Attribute_Country | Country/Region |
| Attribute_DisplayName | Display Name |
| Attribute_Email | Email Address |
| Attribute_Generic_ConfirmationLabel |  Re-enter |
| Attribute_GivenName | Given Name |
| Attribute_JobTitle |  Job Title |
| Attribute_Password | Password |
| Attribute_Password_MismatchErrorString | Passwords do not match. |
| Attribute_PostalCode | Postal Code |
| Attribute_State | State/Province |
| Attribute_StreetAddress | Street Address |
| Attribute_Surname | Surname |
| SignIn_Description | Sign in to access |
| SignIn_Title | Sign in |
| SignUp_Description | Sign up to access |
| SignUp_Title | Create account |
| SisuOtc_Title | Enter code |
| Attribute_extension_82936c774db949fcac549215e8857017_Total_Job_Experience_Years | Total_Job_Experience_Years |


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.keyValue",
  "baseType": null
}-->

```json
{
  "key": "String",
  "value": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "keyValue resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


