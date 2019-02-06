{
    "id": "83aeefad-bf97-4a4d-882b-21beac6a0d76",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "oMovable",
    "eventList": [
        {
            "id": "e000276e-1bdb-4175-9097-feb41681063f",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "83aeefad-bf97-4a4d-882b-21beac6a0d76"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "0a15d0d0-42e9-47ca-80b9-c7a9f91c8a7d",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "3a7e0f79-6dae-44ae-84fe-e94161ae0c70",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "isOnMove",
            "varType": 3
        },
        {
            "id": "da224d8a-fafd-497b-803e-03f5500748e9",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": [
                "\"oPlayer\"",
                "\"oPlayer2\""
            ],
            "multiselect": true,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "",
            "varName": "linkTo",
            "varType": 6
        },
        {
            "id": "3918ff6c-7522-4efd-bffd-eff0a02344b0",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "playersToMove",
            "varType": 1
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}