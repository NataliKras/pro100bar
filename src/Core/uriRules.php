<?php

return [
    '/home' => 'site/home',
    '/login' => 'site/loginform',

    '/ingridients/page{page}' => 'ingridients/show',
    '/ingridients/edit{id}' => 'ingridients/showeditform',
    '/ingridients/add' => 'ingridients/showaddform',
    '/ingridients/delete{id}' => 'ingridients/usergroup/delete',

    '/coctails/page{page}' => 'coctails/show',
    '/coctails/edit{id}' => 'coctails/showeditform',
    '/coctails/add' => 'coctails/showaddform',
    '/coctails/delete{id}' => 'coctails/usergroup/delete',

    // '/usergroup/page{page}' => 'usergroup/show',
    // '/usergroup/edit{id}' => 'usergroup/showeditform',
    // '/usergroup/add' => 'usergroup/showaddform',
    // '/usergroup/delete{id}' => 'usergroup/delete',

    // '/feedback/page{page}' => 'feedback/show',
    // '/feedback/edit{id}' => 'feedback/showeditform',
    // '/feedback/add' => 'feedback/showaddform',
    // '/feedback/delete{id}' => 'feedback/delete',

    '/users/page{page}' => 'users/show',
    '/users/edit{id}' => 'users/showeditform',
    '/users/add' => 'users/showaddform',
    '/users/delete{id}' => 'users/delete',

    '/signup' => 'signup/showform'
];
