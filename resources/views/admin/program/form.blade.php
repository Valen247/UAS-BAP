<div class="form-group {{ $errors->has('program_name') ? 'has-error' : ''}}">
    <label for="program_name" class="control-label">{{ 'Program Name' }}</label>
    <input class="form-control" name="program_name" type="text" id="program_name" value="{{ isset($program->program_name) ? $program->program_name : ''}}" >
    {!! $errors->first('program_name', '<p class="help-block">:message</p>') !!}
</div>


<div class="form-group">
    <input class="btn btn-primary" type="submit" value="{{ $formMode === 'edit' ? 'Update' : 'Create' }}">
</div>
