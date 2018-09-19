<?php

  $page_now="dashboard";
  include 'navbar.php';

 $connect = mysqli_connect('localhost','root','','db_gmf');

//data total pekerja
$peg = mysqli_query($connect, "SELECT * from pegawai");
$total_peg = mysqli_num_rows($peg);

//data usia
$akhir = date_create(); // waktu sekarang
$max=0;
$min=200;
for ($i=0; $i < $total_peg; $i++) { 
  $array_data = mysqli_fetch_array($peg);
  $awal  = date_create($array_data['tgl_lahir']);
  $usia  = date_diff($awal, $akhir);
  if ($max<$usia->y) {
    $max=$usia->y;
  }
  if ($min>$usia->y) {
    $min=$usia->y;
  }
}


//data rentang mka 
$peg = mysqli_query($connect, "SELECT * from pegawai");
$max_mka=0;
$min_mka=200;
for ($i=0; $i < $total_peg; $i++) { 
  $array_data = mysqli_fetch_array($peg);
  $awal_kerja  = date_create($array_data['tgl_masuk']);
  $lama_kerja  = date_diff($awal_kerja, $akhir);
  if ($max_mka<$lama_kerja->y) {
    $max_mka=$lama_kerja->y;
  }
  if ($min_mka>$lama_kerja->y) {
    $min_mka=$lama_kerja->y;
  }
}

//data chart man power
$de = mysqli_query($connect,"SELECT jabatan from pegawai where jabatan = 'Development Engineer' ");
$jumlah_de = mysqli_num_rows($de);
$ee = mysqli_query($connect,"SELECT jabatan from pegawai where jabatan = 'Engineering Expert' ");
$jumlah_ee = mysqli_num_rows($ee); 
$gm = mysqli_query($connect,"SELECT jabatan from pegawai where jabatan = 'General Manager' ");
$jumlah_gm = mysqli_num_rows($gm); 
$m = mysqli_query($connect,"SELECT jabatan from pegawai where jabatan = 'Manager' ");
$jumlah_m = mysqli_num_rows($m);
$sec = mysqli_query($connect,"SELECT jabatan from pegawai where jabatan = 'Secretary' ");
$jumlah_sec = mysqli_num_rows($sec); 
$sado = mysqli_query($connect,"SELECT jabatan from pegawai where jabatan = 'Senior Aircraft Data Officer' ");
$jumlah_sado = mysqli_num_rows($sado); 
$sde = mysqli_query($connect,"SELECT jabatan from pegawai where jabatan = 'Senior Development Engineer' ");
$jumlah_sde = mysqli_num_rows($sde);
$stpo = mysqli_query($connect,"SELECT jabatan from pegawai where jabatan = 'Senior Technical Publication Officer' ");
$jumlah_stpo = mysqli_num_rows($stpo); 
$tpo = mysqli_query($connect,"SELECT jabatan from pegawai where jabatan = 'Technical Publication Officer' ");
$jumlah_tpo = mysqli_num_rows($tpo); 
$tde = mysqli_query($connect,"SELECT jabatan from pegawai where jabatan = 'Trainee for Development Engineer' ");
$jumlah_tde = mysqli_num_rows($tde);
$vp = mysqli_query($connect,"SELECT jabatan from pegawai where jabatan = 'Vice President' ");
$jumlah_vp = mysqli_num_rows($vp); 

//data chart generation
$peg = mysqli_query($connect, "SELECT * from pegawai");
$jumlah = mysqli_num_rows($peg);
$baby = 0;
$gen_x = 0;
$gen_y = 0;
$gen_z = 0;
$alpha = 0;
for ($i=0; $i < $jumlah; $i++) { 
  $array_data = mysqli_fetch_array($peg);
  $lahir = substr($array_data['tgl_lahir'],0,4);
  if ($lahir>1945 && $lahir<=1964) {
  $baby++;
} elseif ($lahir>1964 && $lahir <=1979) {
  $gen_x++;
} elseif ($lahir>1979 && $lahir <=1994) {
  $gen_y++;
} elseif ($lahir>1994 && $lahir<=2010) {
  $gen_z++;
} else
$alpha++;
}



//data chart awp

$peg = mysqli_query($connect, "SELECT * from pegawai");
$akhir = date_create(); // waktu sekarang
$masa0=0;
$masa6=0;
$masa11=0;
$masa21=0;
for ($i=0; $i < $total_peg; $i++) { 
  $array_data = mysqli_fetch_array($peg);
  $awal_kerja  = date_create($array_data['tgl_masuk']);
  $lama_kerja  = date_diff($awal_kerja, $akhir);
  if ($lama_kerja->y>=0 && $lama_kerja->y <=5) {
    $masa0++;
  } elseif ($lama_kerja->y>5 && $lama_kerja->y <=10) {
    $masa6++;
  } elseif ($lama_kerja->y>11 && $lama_kerja->y <=20) {
    $masa11++;
  } else
  $masa21++;
}



//data chart training-training
$data_human = mysqli_query($connect, "SELECT * FROM training WHERE stat_human=5 or stat_human=4");
$data_human_total = mysqli_query($connect, "SELECT * FROM training WHERE stat_human=5 or stat_human=4 or stat_human=1");
$human = mysqli_num_rows($data_human); 
$human_total = mysqli_num_rows($data_human_total);
$human_persen =  ($human/$human_total)*100;

$data_cas = mysqli_query($connect, "SELECT * FROM training WHERE stat_cas=5 or stat_cas=4");
$data_cas_total = mysqli_query($connect, "SELECT * FROM training WHERE stat_cas=5 or stat_cas=4 or stat_cas=1");
$cas = mysqli_num_rows($data_cas); 
$cas_total = mysqli_num_rows($data_cas_total);
$cas_persen =  ($cas/$cas_total)*100;

$data_fts = mysqli_query($connect, "SELECT * FROM training WHERE stat_fts=5");
$data_fts_total = mysqli_query($connect, "SELECT * FROM training WHERE stat_fts=5 or stat_fts=4 or stat_fts=1");
$fts = mysqli_num_rows($data_fts); 
$fts_total = mysqli_num_rows($data_fts_total);
$fts_persen =  ($fts/$fts_total)*100;

$data_sms = mysqli_query($connect, "SELECT * FROM training WHERE stat_sms=5");
$data_sms_total = mysqli_query($connect, "SELECT * FROM training WHERE stat_sms=5 or stat_sms=4 or stat_sms=1");
$sms = mysqli_num_rows($data_sms); 
$sms_total = mysqli_num_rows($data_sms_total);
$sms_persen =  ($sms/$sms_total)*100;

$data_ewis = mysqli_query($connect, "SELECT * FROM training WHERE stat_ewis=5");
$data_ewis_total = mysqli_query($connect, "SELECT * FROM training WHERE stat_ewis=5 or stat_ewis=4 or stat_ewis=1");
$ewis = mysqli_num_rows($data_ewis); 
$ewis_total = mysqli_num_rows($data_ewis_total);
$ewis_persen =  ($ewis/$ewis_total)*100;

$data_module = mysqli_query($connect, "SELECT * FROM training WHERE stat_module=5");
$data_module_total = mysqli_query($connect, "SELECT * FROM training WHERE stat_module=5 or stat_module=4 or stat_module=1");
$module = mysqli_num_rows($data_module); 
$module_total = mysqli_num_rows($data_module_total);
$module_persen =  ($module/$module_total)*100;

$data_gqs = mysqli_query($connect, "SELECT * FROM training WHERE stat_gqs=5");
$data_gqs_total = mysqli_query($connect, "SELECT * FROM training WHERE stat_gqs=5 or stat_gqs=4 or stat_gqs=1");
$gqs = mysqli_num_rows($data_gqs); 
$gqs_total = mysqli_num_rows($data_gqs_total);
$gqs_persen =  ($gqs/$gqs_total)*100;

$data_batk = mysqli_query($connect, "SELECT * FROM training WHERE stat_batk=5");
$data_batk_total = mysqli_query($connect, "SELECT * FROM training WHERE stat_batk=5 or stat_batk=4 or stat_batk=1");
$batk = mysqli_num_rows($data_batk); 
$batk_total = mysqli_num_rows($data_batk_total);
$batk_persen =  ($batk/$batk_total)*100;

$data_basic = mysqli_query($connect, "SELECT * FROM training WHERE stat_basic=5");
$data_basic_total = mysqli_query($connect, "SELECT * FROM training WHERE stat_basic=5 or stat_basic=4 or stat_basic=1");
$basic = mysqli_num_rows($data_basic); 
$basic_total = mysqli_num_rows($data_basic_total);
$basic_persen =  ($basic/$basic_total)*100;

$data_cont = mysqli_query($connect, "SELECT * FROM training WHERE stat_cont=5");
$data_cont_total = mysqli_query($connect, "SELECT * FROM training WHERE stat_cont=5 or stat_cont=4 or stat_cont=1");
$cont = mysqli_num_rows($data_cont); 
$cont_total = mysqli_num_rows($data_cont_total);
$cont_persen =  ($cont/$cont_total)*100;


//data chart training compliance
$training_comp=($human_persen+$cas_persen+$fts_persen+$sms_persen+$ewis_persen+$module_persen+$gqs_persen+$batk_persen+$basic_persen+$cont_persen)/10;
$sisa_training_comp=100-$training_comp;

// $data_typer1 = mysqli_query($connect, "SELECT * FROM training WHERE stat_typer1= NOT NULL");
// $data_typer1_total = mysqli_query($connect, "SELECT * FROM training WHERE stat_typer1=5 or stat_typer1=4 or stat_typer1=1");
// $typer1 = mysqli_num_rows($data_typer1); 
// $typer1_total = mysqli_num_rows($data_typer1_total);
// $typer1_persen =  ($typer1/$typer1_total)*100;


?>

<div class="main-panel">
  <div class="content">
   <div class="container-fluid">
    <h4 class="page-title" style="text-align: left;">Dashboard Training</h4>
    <div class="row">
     <div class="col-md-3" style="margin-left: 55px">
      <div class="card card-stats">
       <div class="card-body" style="background-color:#1c7661">
        <div class="row">
         <div class="col-5">
          <div class="icon-big text-center icon-warning">
           <i class="la la-user" style="color: #ffffff"></i>
         </div>
       </div>
       <div class="col-7 d-flex align-items-center">
        <div class="numbers">
         <p class="card-category" style="color: #ffffff">Total Workers</p>
         <h4 class="card-title" style="color: #ffffff"><?php echo $total_peg." Orang"?></h4>
       </div>
     </div>
   </div>
 </div>
</div>
</div>

<div class="col-md-3"  style="margin-left: 80px">
  <div class="card card-stats">
   <div class="card-body" style="background-color:#ecb60f">
    <div class="row">
     <div class="col-5">
      <div class="icon-big text-center">
       <i class="la la-bar-chart" style="color: #ffffff"></i>
     </div>
   </div>
   <div class="col-7 d-flex align-items-center">
    <div class="numbers">
     <p class="card-category" style="color: #ffffff">Ages</p>
     <h4 class="card-title" style="color: #ffffff"><?php echo $min."-".$max." Thn"?></h4>
   </div>
 </div>
</div>
</div>
</div>
</div>
<div class="col-md-3"  style="margin-left: 80px">
  <div class="card card-stats">
   <div class="card-body" style="background-color:#189a90">
    <div class="row">
     <div class="col-5">
      <div class="icon-big text-center">
       <i class="la la-tasks" style="color: #ffffff"></i>
     </div>
   </div>
   <div class="col-7 d-flex align-items-center">
    <div class="numbers">
     <p class="card-category" style="color: #ffffff">Working Period</p>
     <h4 class="card-title" style="color: #ffffff"><?php echo $min_mka."-".$max_mka." Thn"?></h4>
   </div>
 </div>
</div>
</div>
</div>
</div>
</div>
<div class="row">
  <div class="col-md-4">
    <div class="card">
      <div class="card-body" style="background-color:#3ea71e">
        <div class="row">
         <div class="col-5">
          <div class="icon-big text-center">
           <i class="la la-cubes" style="color: #ffffff; font-size: 50px; margin-left: -40%"></i>
         </div>
       </div>
       <div class="numbers" style="margin-left: -17%">
         <h4 class="card-title" style="color: #ffffff">Active Working Period</h4>
         <p class="card-category" style="color: #ffffff">Engineering Services</p>
       </div>
     </div>
   </div>
   <div class="card-header">
    <div id="ro_container" style="min-width: 100%; height: 300px; margin: 0 auto"></div>

    <script type="text/javascript">

      Highcharts.chart('ro_container', {
        chart: {
          type: 'column'
        },
    // title: {
    //     text: 'World\'s largest cities per 2017'
    // },
    xAxis: {
      type: 'category',
      labels: {
        rotation: -45,
        style: {
          fontSize: '16 px',
          fontFamily: 'Verdana, sans-serif',
        }
      }
    },
    yAxis: {
      min: 0,
      title: {
        text: 'Jumlah orang'
      }
    },
    legend: {
      enabled: false
    },
    tooltip: {
      pointFormat: 'Jumlah orang: <b>{point.y}</b>'
    },
    series: [{
      name: 'Population',
      color:'#8085e9',
      data: [
      ['0-5 Tahun', <?php echo $masa0; ?>],
      ['6-10 Tahun', <?php echo $masa6; ?>],
      ['11-20 Tahun', <?php echo $masa11; ?>],
      ['21-35 Tahun', <?php echo $masa21; ?>]
      ],
      dataLabels: {
        enabled: true,
        rotation: -90,
        color: '#FFFFFF',
        align: 'right',
            format: '{point.y:.0f}', // one decimal
            y: 10, // 10 pixels down from the top
            style: {
              fontSize: '15px',
              fontFamily: 'Verdana, sans-serif'
            }
          }
        }]
      });
    </script>
  </div>
</div>
</div>

<div class="col-md-4">
  <div class="card">
    <div class="card-body" style="background-color:#239ce5">
      <div class="row">
       <div class="col-5">
        <div class="icon-big text-center">
         <i class="la la-users" style="color: #ffffff; font-size: 50px; margin-left: -40%"></i>
       </div>
     </div>
     <div class="numbers" style="margin-left: -17%">
       <h4 class="card-title" style="color: #ffffff">Manpower</h4>
       <p class="card-category" style="color: #ffffff">Engineering Services</p>
     </div>
   </div>
 </div>
 <div class="card-header">
  <div id="containers" style="min-width: 100%; height: 300px; max-width:auto; margin: 0 auto; margin-left:-15px"></div>
  <script type="text/javascript">

    Highcharts.chart('containers', {
      chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
      },
      tooltip: {
        pointFormat: '{series.name}: <b>{point.y} Orang</b>'
      },
      plotOptions: {
        pie: {
          allowPointSelect: true,
          cursor: 'pointer',
          dataLabels: {
            enabled: true,
            format: '<b>{point.name}</b>: {point.percentage:.1f} %',
            style: {
              color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
            }
          }
        }
      },
      series: [{
        name: 'Jumlah',
        colorByPoint: true,
        data: [{
          name: 'DE',
          y: <?php echo $jumlah_de; ?>,
        }, {
          name: 'Expert',
          y: <?php echo $jumlah_ee; ?>
        }, {
          name: 'GM',
          y: <?php echo $jumlah_gm; ?>
        }, {
          name: 'Manager',
          y: <?php echo $jumlah_m; ?>
        }, {
          name: 'Secretary',
          y: <?php echo $jumlah_sec; ?>
        }, {
          name: 'SADO',
          y: <?php echo $jumlah_sado; ?>
        }, {
          name: 'SDE',
          y: <?php echo $jumlah_sde; ?>
        }, {
          name: 'STPO',
          y: <?php echo $jumlah_stpo; ?>
        }, {
          name: 'TPO',
          y: <?php echo $jumlah_tpo; ?>
        }, {
          name: 'Trainee',
          y: <?php echo $jumlah_tde; ?>
        }, {
          name: 'VP',
          y: <?php echo $jumlah_vp; ?>
        }]
      }]
    });
  </script>
</div>
</div>
</div>
<div class="col-md-4">
  <div class="card">
    <div class="card-body" style="background-color:#e13232">
      <div class="row">
       <div class="col-5">
        <div class="icon-big text-center">
         <i class="la la-share-alt" style="color: #ffffff; font-size: 50px; margin-left: -40%"></i>
       </div>
     </div>
     <div class="numbers" style="margin-left: -17%">
       <h4 class="card-title" style="color: #ffffff">Generation</h4>
       <p class="card-category" style="color: #ffffff">Engineering Services</p>
     </div>
   </div>
 </div>
 <div class="card-header">
   <div id="bar_container" style="min-width: 220px; max-width: 600px; height: 300px; margin: 0 auto"></div>



   <script type="text/javascript">

    Highcharts.chart('bar_container', {
      chart: {
        type: 'bar'
      },
      xAxis: {
        categories: ['Baby Boomers', 'X Generation', 'Y Geneartion','Z Generation']
      },
      yAxis: {
        min: 0,
        title: {
          text: '<?php echo "Total Pekerja: ".$total_peg." Orang"?>'
        }
      },
      plotOptions: {
        series: {
          stacking: 'normal'
        }
      },
      series: [{
        name: 'Kelompok usia kerja',
        color:'#39a1a0',
        data: [<?php echo $baby?>, <?php echo $gen_x?>, <?php echo $gen_y?>, <?php echo $gen_z?>],
        dataLabels: {
          enabled: false
        }
      }]
    });
  </script>
</div>
</div>
</div>
<div class="col-md-4">
  <div class="card">
    <div class="card-body" style="background-color:#ff6e00">
      <div class="row">
       <div class="col-5">
        <div class="icon-big text-center">
         <i class="la la-tachometer" style="color: #ffffff; font-size: 50px; margin-left: -40%"></i>
       </div>
     </div>
     <div class="numbers" style="margin-left: -17%">
       <h4 class="card-title" style="color: #ffffff">Training Compliance</h4>
       <p class="card-category" style="color: #ffffff">Avarage of Engineering Services</p>
     </div>
   </div>
 </div>
 <div class="card-body">
  <div id="ci_container" style="min-width: 290px; height: 300px; max-width: 400px; margin:0px; z-index: 1;"></div>



  <script type="text/javascript">

    Highcharts.chart('ci_container', {
      chart: {
        plotBackgroundColor: null,
        plotBorderWidth: 0,
        plotShadow: false
      },
      tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
      },
      plotOptions: {
        pie: {
          dataLabels: {
            enabled: true,
            format: '<b>{point.name}</b>: {point.percentage:.1f} %',
            distance: -50,
            style: {
              fontWeight: 'bold',
              color: 'black'
            }
          },
          startAngle: -90,
          endAngle: -90,
          center: ['50%', '50%']
        }
      },
      series: [{
        type: 'pie',
        name: 'Prosentase',
        innerSize: '50%',
        data: [
        ['Success', <?php echo "$training_comp"?>],
        {
          name: 'Not yet',
          y: <?php echo "$sisa_training_comp"?>,
          dataLabels: {
            enabled: false
          }
        }
        ]
      }]
    });


  </script>
</div>
</div>
</div>

<div class="col-md-8">
  <div class="card">
    <div class="card-body" style="background-color:#1c5d85">
      <div class="row">
       <div class="col-5">
        <div class="icon-big text-center">
         <i class="la la-star" style="color: #ffffff; font-size: 50px; margin-left: -70%"></i>
       </div>
     </div>
     <div class="numbers" style="margin-left: -29%">
       <h4 class="card-title" style="color: #ffffff">Engineering Services</h4>
       <p class="card-category" style="color: #ffffff">Training Compliance</p>
     </div>
   </div>
 </div>
 <div class="card-header">
   <div id="container" style="min-width: 310px; height: 297px; margin: 0 auto"></div>

   <script type="text/javascript">

// Create the chart
Highcharts.chart('container', {
  chart: {
    type: 'column'
  },
  xAxis: {
    type: 'category'
  },
  yAxis: {
    title: {
      text: 'Total percent market share'
    }

  },
  legend: {
    enabled: false
  },
  plotOptions: {
    series: {
      borderWidth: 0,
      dataLabels: {
        enabled: true,
        format: '{point.y:.1f}%'
      }
    }
  },

  tooltip: {
    headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
    pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b><br/>'
  },

  "series": [
  {
    "name": "Training",
    "colorByPoint": true,
    "data": [
    {
      "name": "HUMAN FACTOR",
      "y": <?php echo $human_persen; ?>,
      "drilldown": "HUMAN FACTOR"
    },
    {
      "name": "CASR,FAR",
      "y": <?php echo $cas_persen; ?>,
      "drilldown": "CASR,FAR"
    },
    {
      "name": "FTS LV.2",
      "y": <?php echo $fts_persen; ?>,
      "drilldown": "FTS LV.2"
    },
    {
      "name": "SMS",
      "y": <?php echo $sms_persen; ?>,
      "drilldown": "SMS"
    },
    {
      "name": "EWIS",
      "y": <?php echo $ewis_persen; ?>,
      "drilldown": "EWIS"
    },
    {
      "name": "MODULE 10",
      "y": <?php echo $module_persen; ?>,
      "drilldown": "MODULE 10"
    },
    {
      "name": "GMF QS",
      "y": <?php echo $gqs_persen; ?>,
      "drilldown": "GMF QS"
    },
    {
      "name": "BATK",
      "y": <?php echo $batk_persen; ?>,
      "drilldown": "BATK"
    },
    {
      "name": "BASIC ENG.",
      "y": <?php echo $basic_persen; ?>,
      "drilldown": "BE"
    },
    {
      "name": "CONT. AIR",
      "y": <?php echo $cont_persen; ?>,
      "drilldown": "CONT. AIR"
    }
    ]
  }
  ],
  "drilldown": {
    "series": [
    {
      "name": "HUMAN FACTOR",
      "id": "HUMAN FACTOR",
      "data": [
      [
      "v65.0",
      0.1
      ],
      [
      "v64.0",
      1.3
      ],
      [
      "v63.0",
      53.02
      ],
      [
      "v62.0",
      1.4
      ],
      [
      "v61.0",
      0.88
      ],
      [
      "v60.0",
      0.56
      ],
      [
      "v59.0",
      0.45
      ],
      [
      "v58.0",
      0.49
      ],
      [
      "v57.0",
      0.32
      ],
      [
      "v56.0",
      0.29
      ],
      [
      "v55.0",
      0.79
      ],
      [
      "v54.0",
      0.18
      ],
      [
      "v51.0",
      0.13
      ],
      [
      "v49.0",
      2.16
      ],
      [
      "v48.0",
      0.13
      ],
      [
      "v47.0",
      0.11
      ],
      [
      "v43.0",
      0.17
      ],
      [
      "v29.0",
      0.26
      ]
      ]
    },
    {
      "name": "Firefox",
      "id": "Firefox",
      "data": [
      [
      "v58.0",
      1.02
      ],
      [
      "v57.0",
      7.36
      ],
      [
      "v56.0",
      0.35
      ],
      [
      "v55.0",
      0.11
      ],
      [
      "v54.0",
      0.1
      ],
      [
      "v52.0",
      0.95
      ],
      [
      "v51.0",
      0.15
      ],
      [
      "v50.0",
      0.1
      ],
      [
      "v48.0",
      0.31
      ],
      [
      "v47.0",
      0.12
      ]
      ]
    },
    {
      "name": "Internet Explorer",
      "id": "Internet Explorer",
      "data": [
      [
      "v11.0",
      6.2
      ],
      [
      "v10.0",
      0.29
      ],
      [
      "v9.0",
      0.27
      ],
      [
      "v8.0",
      0.47
      ]
      ]
    },
    {
      "name": "Safari",
      "id": "Safari",
      "data": [
      [
      "v11.0",
      3.39
      ],
      [
      "v10.1",
      0.96
      ],
      [
      "v10.0",
      0.36
      ],
      [
      "v9.1",
      0.54
      ],
      [
      "v9.0",
      0.13
      ],
      [
      "v5.1",
      0.2
      ]
      ]
    },
    {
      "name": "Edge",
      "id": "Edge",
      "data": [
      [
      "v16",
      2.6
      ],
      [
      "v15",
      0.92
      ],
      [
      "v14",
      0.4
      ],
      [
      "v13",
      0.1
      ]
      ]
    },
    {
      "name": "Opera",
      "id": "Opera",
      "data": [
      [
      "v50.0",
      0.96
      ],
      [
      "v49.0",
      0.82
      ],
      [
      "v12.1",
      0.14
      ]
      ]
    }
    ]
  }
});
</script>
</div>
</div>
</div>