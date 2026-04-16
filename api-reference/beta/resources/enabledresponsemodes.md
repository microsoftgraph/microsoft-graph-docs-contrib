---
title: "enabledResponseModes enum type"
description: "Specifies the HTTP response modes that are supported for token acquisition."
ms.localizationpriority: medium
doc_type: enumPageType
ms.subservice: "entra-applications"
author: "vijaysr"
ms.date: 04/16/2026
---

# enabledResponseModes enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the HTTP response modes that are supported for token acquisition. This is a flags enumeration that allows a combination of its member values.

## Members

| Member | Value | Description |
|:-------|:------|:------------|
| none | 0 | No response modes are enabled. |
| query | 1 | The authorization response parameters are returned in the query string of the redirect URI. |
| fragment | 2 | The authorization response parameters are returned in the fragment of the redirect URI. |
| formPost | 4 | The authorization response parameters are returned using form POST to the redirect URI. |
| unlockLocalhost | 8 | When a localhost redirect URI (or any of its variants) is configured, `formPost` is allowed by default. If the app wants to use `query` or `fragment` response modes with localhost, this flag must be set. |
| all | 16 | All response modes are enabled. |
| unknownFutureValue | 32 | Evolvable enumeration sentinel value. Don't use. |
