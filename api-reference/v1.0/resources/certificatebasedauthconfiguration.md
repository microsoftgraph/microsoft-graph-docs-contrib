---
title: "certificateBasedAuthConfiguration resource type"
description: "Represents a collection of certificate authorities."
ms.localizationpriority: medium
author: "vimrang"
ms.subservice: "entra-sign-in"
doc_type: "resourcePageType"
toc.keywords: [ CBA ]
ms.date: 07/22/2024
---

# certificateBasedAuthConfiguration resource type

Namespace: microsoft.graph

Microsoft Entra ID authenticates you with a client certificate on a Windows, Android, or iOS device when you connect your Exchange Online account to:

- Microsoft mobile applications such as Outlook and Word
- Exchange ActiveSync (EAS) clients

Configuring this feature eliminates the need to enter a username and password combination into certain mail and Microsoft Office applications on your mobile device.

Certificate-based authentication configuration is provided through a collection of certificate authorities. Microsoft Entra ID uses the certificate authorities to establish a trusted certificate chain, which enables it to authenticate clients with a client certificate.

Learn more about [certificate-based authentication in Microsoft Entra ID](/azure/active-directory/authentication/active-directory-certificate-based-authentication-get-started).

>[!NOTE]
>Administrators are highly recommended to configure the new scalable platform for [PKI (Public Key Infrastructure) based store](certificatebasedauthpki.md). This new PKI-based CA store supports up to 250 certificate authorities. It also allows each CA file to be as large as 8 KB. Additionally, it introduces new features such as issuer hints.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/certificatebasedauthconfiguration-list.md) | [certificateBasedAuthConfiguration](certificatebasedauthconfiguration.md) | List the properties of the **certificateBasedAuthConfiguration** collection. |
| [Create](../api/certificatebasedauthconfiguration-post-certificatebasedauthconfiguration.md) | [certificateBasedAuthConfiguration](certificatebasedauthconfiguration.md) | Create a new **certificateBasedAuthConfiguration** object. |
| [Get](../api/certificatebasedauthconfiguration-get.md) | [certificateBasedAuthConfiguration](certificatebasedauthconfiguration.md) | Read the properties of a **certificateBasedAuthConfiguration** object. |
| [Delete](../api/certificatebasedauthconfiguration-delete.md) | None | Delete a **certificateBasedAuthConfiguration** object. |

>[!NOTE]
>Updating **certificateBasedAuthConfiguration** is not supported. To change a **certificateBasedAuthConfiguration**, first delete and then create a new **certificateBasedAuthConfiguration**.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|certificateAuthorities|[certificateAuthority](certificateauthority.md) collection|Collection of certificate authorities which creates a trusted certificate chain.|
|id|String|The unique identifier of the certificate based auth configuration. Read-only.|

## Relationships

None,

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.certificateBasedAuthConfiguration",
  "keyProperty": "id"
}-->

```json
{
  "certificateAuthorities": {"@odata.type": "collection(microsoft.graph.certificateAuthority)"},
  "id": "String (identifier)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "certificateBasedAuthConfiguration resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
