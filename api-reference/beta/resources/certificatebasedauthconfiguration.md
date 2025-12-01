---
title: "certificateBasedAuthConfiguration resource type"
description: "Represents a collection of certificate authorities."
ms.localizationpriority: medium
author: "vimrang"
ms.subservice: "entra-sign-in"
doc_type: "resourcePageType"
toc.keywords: [ CBA ]
ms.date: 11/07/2024
---

# certificateBasedAuthConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the classic certificate-based authentication (CBA) trust store.

Certificate-based authentication enables you to be authenticated by Microsoft Entra ID with a client certificate on a Windows, Android, or iOS device when connecting your Exchange Online account to:

- Microsoft mobile applications such as Outlook and Word
- Exchange ActiveSync (EAS) clients

Configuring this feature eliminates the need to enter a username and password combination into certain mail and Microsoft Office applications on your mobile device.

Certificate-based authentication configuration is provided through a collection of certificate authorities. The certificate authorities are used to establish a trusted certificate chain which enables clients to be authenticated by Microsoft Entra ID with a client certificate.

Learn more about [Get started with certificate-based authentication in Microsoft Entra ID with federation](/entra/identity/authentication/certificate-based-authentication-federation-get-started).

> [!IMPORTANT]
> We highly recommend you use the new [PKI-based trust store](certificatebasedauthpki.md) which is more scalable than this classic trust store. It supports up to 250 CAs with up to 8KB per CA file and also supports new functionality such as issuer hints.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/certificatebasedauthconfiguration-list.md) | [certificateBasedAuthConfiguration](certificatebasedauthconfiguration.md) | List the properties of the **certificateBasedAuthConfiguration** collection. |
| [Get](../api/certificatebasedauthconfiguration-get.md) | [certificateBasedAuthConfiguration](certificatebasedauthconfiguration.md) | Read the properties of a **certificateBasedAuthConfiguration** object. |
| [Create](../api/certificatebasedauthconfiguration-post-certificatebasedauthconfiguration.md) | [certificateBasedAuthConfiguration](certificatebasedauthconfiguration.md) | Create a new **certificateBasedAuthConfiguration** object. |
| [Delete](../api/certificatebasedauthconfiguration-delete.md) | None | Delete a **certificateBasedAuthConfiguration** object. |

>[!NOTE]
>Updating cerficateBasedAuthConfiguration is not supported. To change a cerficateBasedAuthConfiguration, first delete and then create a new cerficateBasedAuthConfiguration.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|certificateAuthorities|[certificateAuthority](certificateauthority.md) collection|Collection of certificate authorities which creates a trusted certificate chain.|
|id|String|The unique identifier of the certificate based auth configuration. Read-only.|

## Relationships

None

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
