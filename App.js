// in src/App.js
import React from 'react';
import { Admin, Resource, ListGuesser } from 'react-admin';
import authProvider from './authProviderStrapi';
//import jsonServerProvider from 'ra-data-json-server';
import simpleRestProvider from 'ra-data-simple-rest';

//const dataProvider = jsonServerProvider('http://jsonplaceholder.typicode.com');

const App = () => (
    //<Admin dataProvider={dataProvider}>
    <Admin authProvider={authProviderStrapi} dataProvider={simpleRestProvider('http://docker.tonanuvem.net:1773/')}>
        //<Resource name="users" list={ListGuesser} />
        //<Resource name="posts" list={ListGuesser} />
        <Resource name="conteudos" list={ListGuesser} />
    </Admin>
);

export default App;
