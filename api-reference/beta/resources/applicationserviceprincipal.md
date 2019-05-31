---
title: "applicationServicePrincipal resource type"
description: "A combination of an application and a servicePrincipal."
localization_priority: Normal
author: "luleonpla"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# applicationServicePrincipal resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

When adding an instance of an application from the Azure AD Gallery, it creates an application and servicePrincipal object in the directory. The applicationServicePrincipal represents the concatenation of the application and servicePrincipal object.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|application|[application](../resources/application.md)|The list of categories for the application.|
|servicePrincipal|[servicePrincipal](../resources/serviceprincipal.md)|A description of the application.|

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "applicationServicePrincipal resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->