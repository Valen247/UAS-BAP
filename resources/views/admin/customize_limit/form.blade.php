<div class="form-group {{ $errors->has('date') ? 'has-error' : ''}}">
    <label for="date" class="control-label">{{ 'Date' }}</label>
    <input class="form-control" name="date" type="date" id="date" value="{{ isset($customize_limit->date) ? $customize_limit->date : ''}}" >
    {!! $errors->first('date', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('limit') ? 'has-error' : ''}}">
    <label for="limit" class="control-label">{{ 'Limit' }}</label>
    <input class="form-control" name="limit" type="number" id="limit" value="{{ isset($customize_limit->limit) ? $customize_limit->limit : ''}}" >
    {!! $errors->first('limit', '<p class="help-block">:message</p>') !!}
</div>


<div class="form-group">
    <input class="btn btn-primary" type="submit" value="{{ $formMode === 'edit' ? 'Update' : 'Create' }}">
</div>
