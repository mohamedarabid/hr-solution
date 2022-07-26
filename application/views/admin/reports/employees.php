<?php
/* Employees report view
*/
?>
<?php $session = $this->session->userdata('username');?>
<?php $_tasks = $this->Timesheet_model->get_tasks();?>
<?php $get_animate = $this->Xin_model->get_content_animate();?>
<?php $user_info = $this->Xin_model->read_user_info($session['user_id']);?>
<div class="row m-b-1 <?php echo $get_animate;?>">
  <div class="col-md-12">
    <div class="box">
      <div class="box-header with-border">
        <h3 class="box-title"> <?php echo $this->lang->line('xin_hr_report_filters');?> </h3>
      </div>
      <div class="box-body">
        <div class="row">
          <div class="col-md-12">
            <?php $attributes = array('name' => 'employee_reports', 'id' => 'employee_reports', 'autocomplete' => 'off', 'class' => 'add form-hrm');?>
            <?php $hidden = array('euser_id' => $session['user_id']);?>
            <?php echo form_open('admin/reports/employee_reports', $attributes, $hidden);?>
            <?php
                    $data = array(
                      'name'        => 'user_id',
                      'id'          => 'user_id',
                      'type'        => 'hidden',
                      'value'   	   => $session['user_id'],
                      'class'       => 'form-control',
                    );
                
                echo form_input($data);
                ?>
            <?php if($user_info[0]->user_role_id==1){ ?>    
            <div class="row">
              <div class="col-md-3">
                <div class="form-group">
                  <label for="first_name"><?php echo $this->lang->line('left_company');?></label>
                  <select class="form-control" name="company_id" id="aj_company" data-plugin="select_hrm" data-placeholder="<?php echo $this->lang->line('left_company');?>">
                    <option value="0"><?php echo $this->lang->line('xin_acc_all');?></option>
                    <?php foreach($all_companies as $company) {?>
                    <option value="<?php echo $company->company_id?>"><?php echo $company->name?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
            <?php } else {?>
            <?php $ecompany_id = $user_info[0]->company_id;?>
              <div class="col-md-3">
                <div class="form-group">
                  <label for="first_name"><?php echo $this->lang->line('left_company');?></label>
                  <select class="form-control" name="company_id" id="aj_company" data-plugin="select_hrm" data-placeholder="<?php echo $this->lang->line('left_company');?>">
                    <option value=""><?php echo $this->lang->line('left_company');?></option>
                    <?php foreach($all_companies as $company) {?>
                    <?php if($ecompany_id == $company->company_id):?>
                    <option value="<?php echo $company->company_id?>"><?php echo $company->name?></option>
                    <?php endif;?>
                    <?php } ?>
                  </select>
                </div>
              </div>
            <?php } ?>
              <div class="col-md-3">
                <div class="form-group" id="department_ajax">
                  <label for="department"><?php echo $this->lang->line('xin_employee_department');?></label>
                  <select disabled="disabled" class="form-control" name="department_id" id="department_id" data-plugin="select_hrm" data-placeholder="<?php echo $this->lang->line('xin_employee_department');?>">
                    <option value="0"><?php echo $this->lang->line('xin_acc_all');?></option>
                  </select>
                </div>
              </div>
              <div class="col-md-3" id="designation_ajax">
                <div class="form-group">
                  <label for="designation"><?php echo $this->lang->line('xin_designation');?></label>
                  <select disabled="disabled" class="form-control" id="designation_id" name="designation_id" data-plugin="select_hrm" data-placeholder="<?php echo $this->lang->line('xin_designation');?>">
                    <option value="0"><?php echo $this->lang->line('xin_acc_all');?></option>
                  </select>
                </div>
              </div>
              <div class="col-md-3">
                <div class="form-group">
                  <label for="submit">&nbsp;</label><br />
                  <button type="submit" class="btn btn-primary"> <i class="fa fa-check-square-o"></i> <?php echo $this->lang->line('xin_get');?> </button>
                </div>
              </div>
            </div>
            <?php echo form_close(); ?> </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-md-12 <?php echo $get_animate;?>">
    <div class="box">
      <div class="box-header with-border">
        <h3 class="box-title"> <?php echo $this->lang->line('xin_view');?> <?php echo $this->lang->line('xin_hr_report_employees');?> </h3>
      </div>
      <div class="box-body">
        <div class="box-datatable table-responsive">
          <table class="datatables-demo table table-striped table-bordered" id="xin_table">
            <thead>
              <tr>
                <th><?php echo $this->lang->line('xin_employees_id');?></th>
                <th><?php echo $this->lang->line('xin_employees_full_name');?></th>
                <th><?php echo $this->lang->line('left_company');?></th>
                <th><?php echo $this->lang->line('dashboard_email');?></th>
                <th><?php echo $this->lang->line('xin_employee_department');?></th>
                <th><?php echo $this->lang->line('xin_designation');?></th>
                <th><?php echo $this->lang->line('dashboard_xin_status');?></th>
              </tr>
            </thead>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
