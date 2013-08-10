describe 'jQuery Address Parser Plugin', ->

  beforeEach ->
    jasmine.getFixtures().set("""
                                <textarea id='rawAddress'></textarea>
                                <input type='text' id='name' />
                                <input type='text' id='address' />
                                <input type='text' id='city' />
                                <input type='text' id='province' />
                                <input type='text' id='postal' />
                                <input type='text' id='country' />
                                <input type='text' id='phone' />
                                <input type='text' id='email' />
                                <input type='text' id='website' />
                              """)      

  it 'should extract the name and put it in a field', ->
    $('#rawAddress').addressparser({name: '#name'})
    $('#rawAddress').val('Test Name, Somewhere')
    $('#rawAddress').trigger('input')
    expect($('#name').val()).toEqual('Test Name')

  it 'should extract and populate all values', ->
    $('#rawAddress').addressparser({        
      name: '#name',
      address: '#address',
      city: '#city',
      province: '#province',
      postal: '#postal',
      country: '#country',
      phone: '#phone',
      email: '#email',
      website: '#website'
    })
    
    $('#rawAddress').val("""
                           Amsterdam Brewery
                           info@amsterdambeer.com
                           416.504.6882
                           http://amsterdambeer.com
                           45 Esandar Dr Toronto, ON M4G 4C5
                         """)
    $('#rawAddress').trigger('input')
    expect($('#name').val()).toEqual('Amsterdam Brewery')
    expect($('#address').val()).toEqual('45 Esandar Dr')
    expect($('#city').val()).toEqual('Toronto')
    expect($('#province').val()).toEqual('ON')
    expect($('#postal').val()).toEqual('M4G 4C5')
    expect($('#country').val()).toEqual('Canada')
    expect($('#phone').val()).toEqual('(416) 504-6882')
    expect($('#email').val()).toEqual('info@amsterdambeer.com')
    expect($('#website').val()).toEqual('http://amsterdambeer.com')
