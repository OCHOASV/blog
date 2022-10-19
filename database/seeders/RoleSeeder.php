<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $adminRole = Role::create(['name' => 'Admin']);
        $bloggerRole = Role::create(['name' => 'Blogger']);

        Permission::create(['name' => 'admin.home'])->syncRoles([$adminRole, $bloggerRole]);

        Permission::create(['name' => 'admin.categories.index'])->syncRoles([$adminRole, $bloggerRole]);
        Permission::create(['name' => 'admin.categories.create'])->syncRoles([$adminRole, $bloggerRole]);
        Permission::create(['name' => 'admin.categories.edit'])->syncRoles([$adminRole, $bloggerRole]);
        Permission::create(['name' => 'admin.categories.destroy'])->syncRoles([$adminRole, $bloggerRole]);

        Permission::create(['name' => 'admin.tags.index'])->syncRoles([$adminRole, $bloggerRole]);
        Permission::create(['name' => 'admin.tags.create'])->syncRoles([$adminRole, $bloggerRole]);
        Permission::create(['name' => 'admin.tags.edit'])->syncRoles([$adminRole, $bloggerRole]);
        Permission::create(['name' => 'admin.tags.destroy'])->syncRoles([$adminRole, $bloggerRole]);

        Permission::create(['name' => 'admin.posts.index'])->syncRoles([$adminRole, $bloggerRole]);
        Permission::create(['name' => 'admin.posts.create'])->syncRoles([$adminRole, $bloggerRole]);
        Permission::create(['name' => 'admin.posts.edit'])->syncRoles([$adminRole, $bloggerRole]);
        Permission::create(['name' => 'admin.posts.destroy'])->syncRoles([$adminRole, $bloggerRole]);
    }
}
