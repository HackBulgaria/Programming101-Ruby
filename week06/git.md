# Неща за Git и GitHub

Важни неща, които да гледаме в началото.

## Какво да направим първо?

**ПЪРВО**

Хубаво е да се направи repository в GitHub и да се добавят нужните collaborators.

Добавеният човек трябва да потвърди по email.

**ВТОРО**

Клонирайте repository-то локално при вас.

Това става, като вземете url-а от GitHub, който е или **SSH** или **HTTPS**.

След това клонирането става със следната команда (на мястото на URL-а трябва да стои коректния URL)

```
$ cd /home/name/some/path/to/projects
$ git clone git@github.com:HackBulgaria/Programming101-Ruby.git
```

**ТРЕТО**

Разделете си работата, правете бранчове, отваряйте pull requests.

## Workflow:

0. master-а винаги (ако може) е stable!
1. Всеки ще работи в собствен branch.
2. Често push-вай за добро!
3. При нужда от merge се отваря Pull Request от бранча, в който се работи (compare) към бранча, в който искате да merge-вате (base)

## Команди

Основните команди за добавяне са следните:

```
$ git add some_file.rb
$ git commit -m 'Commit message here'
$ git push origin master
```

Ако искате да си направите собствен branch:

```
$ git branch feature_branch_name
$ git checkout feature_branch_name
```

След това работите нормално.

Ако искате да качите нещата от бранча в GitHub:

```
$ git push origin feature_branch_name
```

След това може да отворите Pull Request от GitHub

## Събиране на промените в master

Имаме следната ситуация.

Има два бранча - `A` и `B`

И двата бранча са готови да отидат в `master`.

Тогава, за да се обединят промените от двата бранча, се правят следните неща:

1. Спирате да работите и да commit-вате и push-вате нови неща.
2. Отварят се (ако вече не са) нови Pull Requests от `A` към `master` и `B` към master
3. Един от двамата merge-ва през GitHub двата бранча в `master`
4. И двамата, локално изпълняват следните команди:

```
$ git checkout master
$ git pull origin master
```

Това ще свали промените от GitHubл локално в repo-то.

След това, ако искате да вземете промените в съответния branch, в който се работи локално:

```
$ git checkout A
$ git merge master
$ git push origin A
```
