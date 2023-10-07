import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AventuraComponent } from './aventura.component';

describe('AventuraComponent', () => {
  let component: AventuraComponent;
  let fixture: ComponentFixture<AventuraComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [AventuraComponent]
    });
    fixture = TestBed.createComponent(AventuraComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
