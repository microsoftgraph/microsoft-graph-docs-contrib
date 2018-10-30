# Configuring the built-in tab types

To [create](../api-reference/beta/api/channels_tabs_add.md) or [configure a tab](../api-reference/beta/api/channels_tabs_update.md) using Graph APIs, 
you need to know the `teamsAppId` of the app, and the
`entityId`, `contentUrl`, `removeUrl`, and `websiteUrl` to provide for that kind of app.
Here are how to get those values for the built-in tab types.

## Custom tabs

To use Graph to configure a tab associated with a [tab provider](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/tabs/tabs-overview) that you wrote,
figure out what `entityId`, `contentUrl`, `removeUrl`, and `websiteUrl`
the app's [configuration UI provides to Microsoft Teams](https://docs.microsoft.com/en-us/javascript/api/@microsoft/teams-js/microsoftteams.settings.settings?view=msteams-client-js-latest),
and pass the same `entityId`, `contentUrl`, `removeUrl`, and `websiteUrl` values to Graph.

The `teamsAppId` is the same as the `id` in the [app manifest schema for Microsoft Teams](https://docs.microsoft.com/en-us/microsoftteams/platform/resources/schema/manifest-schema)

## Web site tabs

teamsAppId is `com.microsoft.teamspace.tab.web`. 
Configuration:

| Property   | Type        | Description                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| entityId   | string      | null                                                     |
| contentUrl | string      | URL of the website                                       |
| removeUrl  | string      | null                                                     |
| websiteUrl | string      | URL of the website                                       |

## Microsoft Planner

teamsAppId is "com.microsoft.teamspace.tab.planner".
Configuration:

| Property   | Type        | Description                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| entityId   | string      | The plan Id (ie, the id to use with GET /planner/plans/{id})                                              |
| contentUrl | string      | `https://tasks.office.com/<tenantName>/Home/PlannerFrame?page=7&planId=<planId>`, where <tenantName> is the name of the tenant (eg, example.onmicrosoft.com), and <planId> is the same as the entity id.  |
| removeUrl  | string      | Same value as the contentUrl    |
| websiteUrl | string      | Same value as the contentUrl   |

To create a new plan to display in your planner tab, see [create plannerPlan](../api-reference/beta/api/planner_post_plans.md).


## Microsoft Stream

teamsAppId is `com.microsoftstream.embed.skypeteamstab`.
Configuration:

| Property   | Type        | Description                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| entityId   | string      | null                                                     |
| contentUrl | string      | `https://web.microsoftstream.com/embed/video/<id>?autoplay=false&showinfo=true&app=microsoftteams&l={locale}`, where <id> is the id of the video stream.  To find the <id> of a stream, open the stream in your browser and look at you the URL – it will be of the form `https://<domain>.microsoftstream.com/video/<id>`.  |
| removeUrl  | string      | null                                                     |
| websiteUrl | string      | `https://web.microsoftstream.com/video/<id>`, where <id> is the id of the video stream.    |

## Microsoft Forms

teamsAppId is `81fef3a6-72aa-4648-a763-de824aeafb7d`.
Configuration:

| Property   | Type        | Description                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| entityId   | string      | The id of the form.  Define this value, navigate to the form in the Forms website, and find the URL of the form `https://forms.office.com/Pages/DesignPage.aspx#FormId=<formId>`.      |
| contentUrl | string      | `https://forms.office.com/Pages/TeamsDesignPage.aspx?Host=Teams&lang={locale}&groupId={groupId}&tid={tid}&teamsTheme={theme}&upn={upn}&fragment=FormId%3D<formId>`, where <formId> is the same as the entity Id.  |
| removeUrl  | string      | null                                                     |
| websiteUrl | string      |  `https://forms.office.com`    |

## Microsoft Word, Microsoft Excel, Microsoft PowerPoint, and PDF tabs

| App   | teamsAppId | type (extension)                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| Word | `com.microsoft.teamspace.tab.file.staticviewer.word` | `docx` |
| Excel | `com.microsoft.teamspace.tab.file.staticviewer.excel` | `xlsx` |
| PowerPoint  | `com.microsoft.teamspace.tab.file.staticviewer.powerpoint` | `pptx` |
| PDF | `com.microsoft.teamspace.tab.file.staticviewer.pdf` | `pdf` |

Configuration:

| Property   | Type        | Description                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| entityId   | string      | null                                                     |
| contentUrl | string      | null                                                     |
| removeUrl  | string      | null                                                     |
| websiteUrl | string      | null                                                     |
| objectId   | string      | The file's UniqueId in SharePoint. This can be found by using [`GET /beta/groups/{id}/drive/root:/{channel-Name>}:/children`](../api-reference/beta/api/driveitem_list_children.md) to get the metadata for the file. The first property, @microsoft.graph.downloadUrl, will contain a URL of the form https://microsoft.sharepoint.com/.....?UniqueId=<guid>&... |
| file       | <see below> | <see below>                                              |
| dateAdded   | string      | in the form `2018-02-21T01:37:12.629Z` |

Properties for the file object:

| Property   | Type        | Description                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| type       | string      | type/extension from above |
| objectId       | string      | same as the object ID above |
| objectUrl      | string      | a download URL to the document of the form `https://microsoft.sharepoint.com/teams/<Team Name>/Shared Documents/<channel name>/<filename.pptx>` |
|serviceName| string |`teams`|
|providerMetadata| string      | "" |

## Wiki tabs

teamsAppId is `com.microsoft.teamspace.tab.wiki`.
Wiki tabs do not support configuration through Graph.
Note however there's not much to configure --
in an un-configured wiki tab, the first user just needs to click "set up tab" to configure it.

## Document Library

teamsAppId is `com.microsoft.teamspace.tab.files.sharepoint`. 
Configuration is not supported.

## OneNote

teamsAppId is `0d820ecd-def2-4297-adad-78056cde7c78`.
Configuration:

| Property   | Type        | Description                                              |
| ---------- | ----------- | -------------------------------------------------------- |
| entityId   | string      | `<randomGuid>_<notebookId>`, where <randomGuid> is a guid you generate.                                      |
| contentUrl | string      | a URL of the form `https://www.onenote.com/teams/TabContent?entityid=%7BentityId%7D&subentityid=%7BsubEntityId%7D&auth_upn=%7Bupn%7D&notebookSource=New&notebookSelfUrl=https%3A%2F%2Fwww.onenote.com%2Fapi%2Fv1.0%2FmyOrganization%2Fgroups%2F<sectionsUrl>%2Fnotes%2Fnotebooks%2F<notebookId>&oneNoteWebUrl=<oneNoteWebUrl>&notebookName=note&ui={locale}&tenantId={tid}`, where `<sectionsUrl>`, `<notebookId>`, and `<oneNoteWebUrl>` can be found in [GET /groups/{id}/onenote/notebooks](../api-reference/beta/api/onenote_list_notebooks.md). Slashes must be escaped. |
| removeUrl  | string      | a URL of the form `https://www.onenote.com/teams/TabRemove?entityid=%7BentityId%7D&subentityid=%7BsubEntityId%7D&auth_upn=%7Bupn%7D&notebookSource=New&notebookSelfUrl=https%3A%2F%2Fwww.onenote.com%2Fapi%2Fv1.0%2FmyOrganization%2Fgroups%2F<sectionsUrl>%2Fnotes%2Fnotebooks%2F<notebookId>&oneNoteWebUrl=<oneNoteWebUrl>&notebookName=note&ui={locale}&tenantId={tid}`, where `<sectionsUrl>`, `<notebookId>`, and `<oneNoteWebUrl>` can be found in [GET /groups/{id}/onenote/notebooks](../api-reference/beta/api/onenote_list_notebooks.md). Slashes must be escaped. |
| websiteUrl | string      | a URL of the form `https://www.onenote.com/teams/TabRedirect?redirectUrl=<oneNoteWebUrl>`, where `oneNoteWebUrl` can be found in [GET /groups/{id}/onenote/notebooks](../api-reference/beta/api/onenote_list_notebooks.md) |

## Power%20BI

teamsAppId is `com.microsoft.teamspace.tab.powerbi`.
Configuration is not supported.

## SharePoint Pages and Lists

teamsAppId is `2a527703-1f6f-4559-a332-d8a7d288cd88`.
Configuration is not supported.
