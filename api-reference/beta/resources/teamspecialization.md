---
title: "teamSpecialization enum type"
description: "Describes the special use case for a team."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# teamSpecialization enum type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates whether the [team](../resources/team.md) is intended for a particular use case. Each [team](../resources/team.md) specialization has access to unique behaviors and experiences targeted to its use case. Default is 'none'.

## Members

| Member             | Value | Description                                                                |
| :----------------- | :---- | :------------------------------------------------------------------------- |
| none               | 0     | Default type for a team which gives the standard team experience.          |
| unknownFutureValue | 7     | Sentinel value reserved as a placeholder for future expansion of the enum. |
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/teamspecialization.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
