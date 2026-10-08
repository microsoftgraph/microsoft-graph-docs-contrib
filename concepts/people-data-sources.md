---
title: "People data sources in Microsoft 365"
description: "Learn about Microsoft 365 people data sources, source IDs, and source metadata in profile data."
author: "helgeso"
ms.localizationpriority: high
ms.subservice: "people"
ms.custom: scenarios:getting-started
ms.date: 06/08/2026
ms.topic: concept-article
---

# People data sources in Microsoft 365

When you look at a person in Copilot or the people card, you see information that combines the person's shared user profile, your managed contact information, and other personalized AI-generated information about that person based on your interactions and collaborations with that person.

The Microsoft 365 user profile is built based on multiple data sources that include organizational sources, inferred data, and user edits. The schema provides metadata that applications can use to identify the source of a given data item.

## Microsoft Entra ID

The Microsoft Entra ID source includes all identity and account data that's relevant to share with other users, including core identity data, communication identities such as phone, email, and instant messaging, and human resources (HR) data that the tenant admin syncs to Microsoft Entra ID. HR data sourced from Microsoft Entra ID typically includes attributes such as job title, manager, employee ID, office location, and other company information.

## Copilot connectors

Copilot connectors for people data enable you to ingest company data related to people into Microsoft 365. This capability enables you to ingest a more extensive set of people data than what is supported via Microsoft Entra ID, including customer-specific people data and skill/competence-related information. You can decide to use connectors to supplement Microsoft Entra ID information or replace Microsoft Entra ID as the source of all HR data beyond core identity and account data.

The Copilot connectors for people data include Microsoft-built connectors and a framework for building connectors for people data.

For more information, see [Microsoft 365 Copilot connectors for people data](/graph/peopleconnectors).

## Organizational data in Microsoft 365

This source includes organizational data managed in the [Organizational data in Microsoft 365](/viva/organizational-data) platform.

## SharePoint

The SharePoint source contains people data synchronized from the SharePoint user profile, also known as the SharePoint User Profile Application (UPA).

Many customers use the SharePoint user profile to upload and manage people data for both specific SharePoint usage and customer-specific scenarios.

> [!NOTE]
> Certain user-editable properties in Microsoft 365 have their main storage in SharePoint. One reason is backward compatibility with SharePoint, as the admin can choose to upload these properties through SharePoint rather than enable users to edit them in Microsoft 365. These properties include the user resume (**AboutMe**), project participation, phone number, executive assistant, and interests.

## People Skills

This source includes user skill data, including AI-inferred skills, that are managed in the Microsoft 365 [People Skills](/copilot/microsoft-365/people-skills-overview) application.

## User edits

Users can edit certain parts of the user profile if allowed by the administrator. For more information, see [Update your profile](https://support.microsoft.com/office/update-your-profile-0ddb9ebf-2850-4533-b07f-cba2c90acbc1). For backward compatibility, these edits occur in SharePoint user profile properties and appear in the people representation associated with the SharePoint (UPA) source.

## API user source

The user source includes data written through the `/user/profile` endpoint in Microsoft Graph beta. It also includes data that users write through [Graph Explorer](/graph/graph-explorer/graph-explorer-overview).

## Source IDs

If you [export your profile data](https://support.microsoft.com/office/export-data-from-your-profile-card-d809f83f-c077-4a95-9b6c-4f093305163d#ID0EBF=About_Microsoft_365_User_Profile_Data) from the profile card, you can identify the source from the source ID. Administrators also use the source ID when they configure metadata for sources and to control source precedence.

The source ID can identify either a built-in source with a predefined GUID or a connector source.

For Microsoft 365 Copilot connectors for people data, the source ID is defined when provisioning a connection and might have a different format.

The following table shows the set of built-in people data sources.

| ID | Source system |
| --- | --- |
| `4ce763dd-9214-4eff-af7c-da491cc3782d` | Microsoft Entra ID. In the API output, this source appears as type `AAD`. |
| `7986c642-b494-4140-8df4-f5ed125e2c67` | Organizational data in Microsoft 365. In the API output, this source appears as type `OrganizationalDataInMicrosoft365`. |
| `6cdc4422-8c05-40c5-902e-8ade707725ab` | SharePoint profile data (UPA) from the user profile sync process. This source also includes user edits from the Microsoft 365 user profile editor, such as the **AboutMe** resume. In the API output, this source appears as type `UPA`. |
| `9a3e0ce2-cf4b-477e-b3b3-df246318e251` | Microsoft account (MSA). Only applicable for consumer (Microsoft Live) profiles. |
| `46a57efc-33f8-4eec-a512-b90039ad6187` | Profile data written through the `/user/profile` endpoint in Microsoft Graph beta. User-initiated edits via a Microsoft 365 edit experience might not end up in this source. In the API output, this source appears as type `user`. |
| `0024a795-114d-4031-95c7-5fb543e00e80` | Alternative ID for data from the Microsoft Entra ID source that might appear in the profile data export. This ID isn't used for admin purposes. In the API output, this source appears as type `MsGraph`. |
| `75d4238e-b142-4d2d-aed9-232b830b8706` | People Skills in Microsoft 365. In the API output, this source appears as `SkillsInViva`. |

The following example shows profile API output for work position data from multiple sources. 

The **sources** property lists sources by ID. It also provides additional metadata that identifies which properties originate from which source. The `isDefaultSource: true` property indicates that all properties not explicitly listed in the **sources** section originate from the default source.

```json
{
  "source": {
    "type": [
      "AAD",
      "MsGraph",
      "ConnectorSource",
      "OrganizationalDataInMicrosoft365"
    ]
  },
  "sources": [
    {
      "id": "4ce763dd-9214-4eff-af7c-da491cc3782d",
      "isDefaultSource": true
    },
    {
      "id": "0024a795-114d-4031-95c7-5fb543e00e80",
      "properties": [
        "detail/employeeId"
      ]
    },
    {
      "id": "7986c642-b494-4140-8df4-f5ed125e2c67",
      "properties": [
        "detail/role",
        "detail/level",
        "detail/employeeType",
        "detail/layer",
        "detail/company/address/countryOrRegion",
        "detail/company/address/state"
      ]
    }
  ]
}
```

