<?php

class Utils
{
    /**
     * @param string $username
     * @return bool
     */
    public static function validUserName($username)
    {
        return preg_match('/^[a-zA-Z0-9 ]{2,12}$/', $username);
    }

    /**
     * @param string $name
     * @return bool
     */
    public static function validName($name)
    {
        return preg_match("/^[a-zA-Z ]{2,12}$/", $name);
    }

    /**
     * @param string $password
     * @return bool
     */
    public static function validPassword($password)
    {
        return preg_match("/^[a-zA-Z0-9 ]{2,12}$/", $password);
    }

    /**
     * @param string $address
     * @return bool
     */
    public static function validAddress($address)
    {
        return preg_match("/^[a-zA-Z0-9,. ]{2,12}$/", $address);
    }

    /**
     * @param string $level
     * @return bool
     */
    public static function validLevel($level)
    {
        return preg_match("/^[1-2]{1,1}$/", $level);
    }

    public static function validCourses(array $courses)
    {
        return count($courses) > 0;
    }
    /**
     * @param array $checkboxes
     * @return array
     */

    public static function validateStudentFields($fields): array
    {
        $errors = [];
        $userName = $fields[0];
        $name = $fields[1];
        $password = $fields[2];
        $address = $fields[3];
        $level = intval($fields[4]);

        if (Utils::validUserName($userName) != 1)
            $errors['username'] = "invalid name";
        if (Utils::validName($name) != 1)
            $errors['name'] = "invalid name";
        if (Utils::validPassword($password) != 1)
            $errors['password'] = "invalid password";
        if (Utils::validAddress($address) != 1)
            $errors['address'] = "invalid address";
        if (Utils::validLevel($level) != 1)
            $errors['level'] = "invalid level";
        if (count(Accounts::select(["userName"], ["userName" => $userName])) !== 0) // problem
            $errors['account'] = "username already exist";

        return $errors;
    }

    public static function validateTeacherFields($fields): array
    {
        $errors = [];
        $userName = $fields[0];
        $name = $fields[1];
        $password = $fields[2];
        $address = $fields[3];
        $courses = $fields[4];

        if (Utils::validUserName($userName) != 1)
            $errors['username'] = "invalid name";
        if (Utils::validName($name) != 1)
            $errors['name'] = "invalid name";
        if (Utils::validPassword($password) != 1)
            $errors['password'] = "invalid password";
        if (Utils::validAddress($address) != 1)
            $errors['address'] = "invalid address";
        if (empty($courses))
            $errors['courses'] = "no courses selected";

        if (count(Accounts::select(["userName"], ["userName" => $userName])) !== 0) // problem
            $errors['account'] = "username already exist";

        return $errors;
    }
    public static function designation($id): string
    {
        $student = Students::select(["accountId"], ["accountId" => $id]);
        $teacher = Teachers::select(["accountId"], ["accountId" => $id]);
        return count($student) > count($teacher) ? "student" : "teacher";
    }
}