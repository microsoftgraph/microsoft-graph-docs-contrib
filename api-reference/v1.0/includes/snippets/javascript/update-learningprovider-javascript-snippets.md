---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const learningProvider = {
    displayName: 'Microsoft',
    squareLogoWebUrlForDarkTheme: 'https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png',
    longLogoWebUrlForDarkTheme: 'https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png',
    squareLogoWebUrlForLightTheme: 'https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png',
    longLogoWebUrlForLightTheme: 'https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png',
    loginWebUrl: 'https://www.linkedin.com/learning-login/teams'
};

await client.api('/employeeExperience/learningProviders/13727311-e7bb-470d-8b20-6a23d9030d70')
	.update(learningProvider);

```