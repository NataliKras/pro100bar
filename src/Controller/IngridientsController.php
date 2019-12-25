<?php

namespace App\Controller;

use App\Core\Conf;
use TexLab\MyDB\DB;
use TexLab\MyDB\DbEntity;

class IngridientsController extends AbstractTableController
{
    protected $tableName = 'ingridients';
    protected $viewPatternsPath = 'templates/table/';
    protected $pageSize = 2;

    public function actionShowIngridients(){
        //Здесь нудно получить списк всех ингридиентов и перадать его во въюху

            // print_r("hello");

            $tableIngridients = new DbEntity('ingridients', DB::Link(Conf::MYSQL));
    
            $this->view->setPatternsPath('templates/table/ingridients');
    
            $this->render("ShowAddEditForm", [
                'columnsNames' => $this->table->getColumnsNames(),
                'editValues' => $this->table->get(['id' => $_GET['id']])[0],
                'URL' => '?t=' . $this->shortClassName() . '&a=Edit&id=' . $_GET['id'],
                'userGroup' => $tableIngridients->getColumn('description'),
                'tableHeaders' => $this->table->getColumnsComments()
            ]);
    }


    // 1. ажмин доьавляет ингридиетн
    // 2. удаление
    // 3. редакт
}