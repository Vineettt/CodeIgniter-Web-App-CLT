<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title?></title>
    <link rel="stylesheet" href="<?=base_url()?>assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?=base_url()?>assets/css/style.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light justify-content-between">
    <div class="container">
        <a class="navbar-brand" href="<?php echo base_url(); ?>">CLT</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item <?php if ($title === 'Home'): ?>active<?php endif; ?>">
                    <a class="nav-link" href="<?php echo base_url(); ?>">Home</a>
                </li>
                <li class="nav-item <?php if ($title === 'Teams'): ?>active<?php endif; ?>">
                    <a class="nav-link" href="<?php echo base_url(); ?>teams">Teams</a>
                </li>
                <li class="nav-item <?php if ($title === 'Matches'): ?>active<?php endif; ?>">
                    <a class="nav-link" href="<?php echo base_url(); ?>matches">Matches</a>
                </li>
                <li class="nav-item <?php if ($title === 'Point table'): ?>active<?php endif; ?>">
                    <a class="nav-link" href="<?php echo base_url(); ?>point-table">Point Table</a>
                </li>
            </ul>
        </div>
    </div>
    </nav>