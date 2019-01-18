---
title: "teamSpecialization enum type"
description: "Describes the special use case for a team."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# teamSpecialization enum type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Indicates whether the [team](../resources/team.md) is intended for a particular use case. Each [team](../resources/team.md) specialization has access to unique behaviors and experiences targeted to its use case. Default is 'none'.

## Members

| Member             | Value | Description                                                                |
| :----------------- | :---- | :------------------------------------------------------------------------- |
| none               | 0     | Default type for a team which gives the standard team experience.          |
| EducationStandard  | 1     | Team created by an education user. All teams created by education user are of type Edu. |
| EducationClass     | 2     | Team experience optimized for a class. This enables segmentation of features across O365. |
| EducationProfessionalLearningCommunity | 3 | Team experience optimized for a PLC. Learn more about PLC at https://en.wikipedia.org/wiki/Professional_learning_community |
| EducationStaff     | 4     |  Team type for optimized experience for staff in an institution. Where staff leader, like principal, is admin and teachers are members in a team which comes with a specialized notebook. Learn more the staff notebook at https://www.onenote.com/staffnotebookedu |
