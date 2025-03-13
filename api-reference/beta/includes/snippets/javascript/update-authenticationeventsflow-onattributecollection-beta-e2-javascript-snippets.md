---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationEventsFlow = {
    '@odata.type': '#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow',
    onAttributeCollection: {
        '@odata.type': '#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp',
        attributeCollectionPage: {
            customStringsFileId: null,
            views: [
                {
                    title: null,
                    description: null,
                    inputs: [
                        {
                            attribute: 'email',
                            label: 'Email Address',
                            inputType: 'text',
                            defaultValue: null,
                            hidden: true,
                            editable: false,
                            writeToDirectory: true,
                            required: true,
                            validationRegEx: '^[a-zA-Z0-9.!#$%&amp;&#8217;\'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$',
                            options: []
                        },
                        {
                            attribute: 'displayName',
                            label: 'Display Name',
                            inputType: 'text',
                            defaultValue: null,
                            hidden: false,
                            editable: true,
                            writeToDirectory: true,
                            required: true,
                            validationRegEx: '^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$',
                            options: []
                        },
                        {
                            attribute: 'city',
                            label: 'City',
                            inputType: 'text',
                            defaultValue: null,
                            hidden: false,
                            editable: true,
                            writeToDirectory: true,
                            required: true,
                            validationRegEx: '^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$',
                            options: []
                        },
                        {
                            attribute: 'extension_331d514c0c18477583ea7dd5a79feda2_RockorCountry',
                            label: 'Rock music or Country',
                            inputType: 'radioSingleSelect',
                            defaultValue: null,
                            hidden: false,
                            editable: true,
                            writeToDirectory: true,
                            required: true,
                            validationRegEx: '^.*',
                            options: [
                                {
                                    label: 'Rock music',
                                    value: 'Rock'
                                },
                                {
                                    label: 'Country music',
                                    value: 'Country'
                                }
                            ]
                        }
                    ]
                }
            ]
        }
    }
};

await client.api('/identity/authenticationEventsFlows/0313cc37-d421-421d-857b-87804d61e33e')
	.version('beta')
	.update(authenticationEventsFlow);

```