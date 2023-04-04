---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationAssignmentResource = {
    distributeForStudentWork: false,
    resource: {
        displayName: 'Template - My Story',
        appId: '6fbeb90c-3d55-4bd5-82c4-bfe824be4300',
        appIconWebUrl: 'https://statics.teams.cdn.office.net/evergreen-assets/ThirdPartyApps/6fbeb90c-3d55-4bd5-82c4-bfe824be4300_largeImage.png?v=2.0.2',
        teamsEmbeddedContentUrl: 'https://app.api.edu.buncee.com/player/C7B0866C9B7E485EAE21AE14DBC3FD08?embed=1&render_slide_panel=1',
        webUrl: 'https://app.edu.buncee.com/buncee/C7B0866C9B7E485EAE21AE14DBC3FD08',
        '@odata.type': '#microsoft.graph.educationTeamsAppResource'
    }
};

await client.api('/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/resources')
	.version('beta')
	.post(educationAssignmentResource);

```