<?php

namespace App\Controller;

    // 1. метод - все котейли *кроме других пользователей
    // 2. добавление нового коктейля
    // 3. редактирование котейля - может админ или автор

use App\Controller\AbstractTableController;
use App\Core\Conf;
use TexLab\MyDB\DB;
use TexLab\MyDB\DbEntity;

class CoctailsController extends AbstractTableController
{
    protected $tableName = 'Coctails';
    protected $viewPatternsPath = 'templates/table/';
    protected $pageSize = 2;

    // public function actionShowCoctails(){
  

    //         $tableIngridients = new DbEntity('Coctails', DB::Link(Conf::MYSQL));
    
    //         $this->view->setPatternsPath('templates/table/Coctails');
    
    //         $this->render("ShowAddEditForm", [
    //             'columnsNames' => $this->table->getColumnsNames(),
    //             'editValues' => $this->table->get(['id' => $_GET['id']])[0],
    //             'URL' => '?t=' . $this->shortClassName() . '&a=Edit&id=' . $_GET['id'],
    //             'userGroup' => $tableIngridients->getColumn('description'),
    //             'tableHeaders' => $this->table->getColumnsComments()
    //         ]);
    // }


    // 1. ажмин доьавляет ингридиетн
    // 2. удаление
    // 3. редакт
}