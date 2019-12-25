<?php

namespace App\Model;

use TexLab\MyDB\DbEntity;

class UsersModel extends DbEntity
{

    public function getPage(?int $page = null): array
    {
        $this
        ->reset()
        ->setSelect("`users`.`id`, `users`.`email`, `users`.`pass`, `users`.`name`")
        // ->setFrom("`user_group`, `users`")
        // ->setWhere("`user_group`.`id` = `users`.`user_group_id`")
        ->setOrderBy("`users`.`id`");
        return parent::getPage($page);
    }


}